resource "dynatrace_davis_anomaly_detectors" "FDXF_Non-Prod-Active_Gate_Dropped_Messages" {
  description = ""
  enabled     = true
  source      = "Custom Alerts"
  title       = "FDXF Non-Prod - Active Gate Dropped Messages "
  analyzer {
    name = "dt.statistics.ui.anomaly_detection.StaticThresholdAnomalyDetectionAnalyzer"
    input {
      analyzer_input_field {
        key   = "query.expression"
        value =<<-EOT
          timeseries {
              messages_dropped = max(dt.sfm.active_gate.communication.messages.dropped, default: 0) }
           ,by: {
              dt.network_zone.id, dt.active_gate.id, dt.active_gate.group.name,
           host.name  }, union: true, nonempty: true
          | summarize dropped=max(messages_dropped[]), by: {timeframe, interval }
        EOT
      }
      analyzer_input_field {
        key   = "alertOnMissingData"
        value = "false"
      }
      analyzer_input_field {
        key   = "violatingSamples"
        value = "3"
      }
      analyzer_input_field {
        key   = "threshold"
        value = "10000"
      }
      analyzer_input_field {
        key   = "dealertingSamples"
        value = "5"
      }
      analyzer_input_field {
        key   = "slidingWindow"
        value = "5"
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
        value = "FDXF Non Prod - Active Gate Dropped Messages "
      }
    }
  }
  execution_settings {
    actor = "c5bb1e26-86da-4098-9334-518fa096154b"
  }
}
