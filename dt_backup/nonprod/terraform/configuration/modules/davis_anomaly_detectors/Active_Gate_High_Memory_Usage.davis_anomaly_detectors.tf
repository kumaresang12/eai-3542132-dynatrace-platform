resource "dynatrace_davis_anomaly_detectors" "Active_Gate_High_Memory_Usage" {
  description = ""
  enabled     = true
  source      = "Custom Alerts"
  title       = "Active Gate High Memory Usage"
  analyzer {
    name = "dt.statistics.ui.anomaly_detection.StaticThresholdAnomalyDetectionAnalyzer"
    input {
      analyzer_input_field {
        key   = "query.expression"
        value =<<-EOT
          timeseries {
            avail_memory = avg(dt.sfm.active_gate.jvm.heap_memory_available),
            used_memory  = avg(dt.sfm.active_gate.jvm.heap_memory_used)
          }, by: {
            dt.network_zone.id,
            dt.active_gate.group.name,
            dt.active_gate.id,
            host.name
          }
          | filter matchesPhrase(dt.network_zone.id, "fdxf")
          | fieldsAdd memory_usage = (used_memory[])/avail_memory[] * 100
          | fieldsRemove avail_memory, used_memory
        EOT
      }
      analyzer_input_field {
        key   = "alertOnMissingData"
        value = "false"
      }
      analyzer_input_field {
        key   = "violatingSamples"
        value = "15"
      }
      analyzer_input_field {
        key   = "threshold"
        value = "80"
      }
      analyzer_input_field {
        key   = "dealertingSamples"
        value = "10"
      }
      analyzer_input_field {
        key   = "slidingWindow"
        value = "15"
      }
      analyzer_input_field {
        key   = "alertCondition"
        value = "ABOVE"
      }
    }
  }
  event_template {
    properties {
      property {
        key   = "dt.source_entity"
        value = "{dims:dt.source_entity}"
      }
      property {
        key   = "event.type"
        value = "CUSTOM_ALERT"
      }
      property {
        key   = "event.description"
        value =<<-EOT
          ❗**Alert description:**
          An anomaly was detected on {metricname}. Within the sliding window, {violating_samples} violation samples were detected that were {alert_condition} the threshold of {threshold}.
        EOT
      }
      property {
        key   = "event.name"
        value = "Active Gate High Memory Usage"
      }
      property {
        key   = "host.name"
        value = "{dims:host.name}"
      }
      property {
        key   = "active.gate.alert"
        value = "true"
      }
    }
  }
  execution_settings {
    actor = "c5bb1e26-86da-4098-9334-518fa096154b"
  }
}
