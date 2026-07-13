resource "dynatrace_davis_anomaly_detectors" "Log_Gap_Too_High" {
  description = ""
  enabled     = true
  source      = "Custom Alerts"
  title       = "Log Gap Too High"
  analyzer {
    name = "dt.statistics.ui.anomaly_detection.StaticThresholdAnomalyDetectionAnalyzer"
    input {
      analyzer_input_field {
        key   = "query.expression"
        value = "timeseries { log_gap= avg(db2.hadr_log_gap) }, by: {device}"
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
        value = "1000"
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
        value = "Log Gap Too High"
      }
      property {
        key   = "db2.alert"
        value = "true"
      }
    }
  }
  execution_settings {
    actor = "d4d46fe1-a769-4510-a073-f4f86bbacb59"
  }
}
