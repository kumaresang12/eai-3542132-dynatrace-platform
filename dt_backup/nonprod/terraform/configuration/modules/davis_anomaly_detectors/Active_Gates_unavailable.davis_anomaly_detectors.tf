resource "dynatrace_davis_anomaly_detectors" "Active_Gates_unavailable" {
  description = ""
  enabled     = true
  source      = "Custom Alerts"
  title       = "Active Gates unavailable"
  analyzer {
    name = "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer"
    input {
      analyzer_input_field {
        key   = "query.expression"
        value =<<-EOT
          timeseries count(dt.osservice.availability), by: {
            dt.osservice.display_name,
            dt.osservice.status,
            DataCenter,
            SecurityZone
          }
          | filter dt.osservice.display_name == "dynatracegateway"
          | filter dt.osservice.status == "active"
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
        key   = "numberOfSignalFluctuations"
        value = "1"
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
        value = "BELOW"
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
        value = "Active Gate unavailable"
      }
      property {
        key   = " dt.osservice.display_name"
        value = "{dims:dt.osservice.display_name}"
      }
      property {
        key   = "active.gate.alert"
        value = "true"
      }
    }
  }
  execution_settings {
    actor = "363d700e-f1f0-4fe8-81f1-2d7901a0dea6"
  }
}
