resource "dynatrace_davis_anomaly_detectors" "TEST_CPU_USAGE" {
  description = ""
  enabled     = true
  source      = "Custom Alerts"
  title       = "TEST_CPU_USAGE"
  analyzer {
    name = "dt.statistics.ui.anomaly_detection.StaticThresholdAnomalyDetectionAnalyzer"
    input {
      analyzer_input_field {
        key   = "query.expression"
        value =<<-EOT
          
          // timeseries {
          //   cpu_usage = avg(dt.host.cpu.usage)
          // }, by: {
          //   dt.network_zone.id,
          //   host.name
          // }
          // | filter host.name == "c0046537.test.cloud.fedex.com"
          
          timeseries {
            cpu_usage = avg(dt.host.cpu.usage)
          }, by: {
            dt.network_zone.id,
            host.name
          }, filter: in(host.name, 
            "c0046537.test.cloud.fedex.com",
            "c0046538.test.cloud.fedex.com",
            "c0046539.test.cloud.fedex.com",
            "c0046540.test.cloud.fedex.com"
          )
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
        value = "2"
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
        value = "TEST_CPU_USAGE"
      }
    }
  }
  execution_settings {
    actor = "72b165c0-2975-4148-98b8-7e8e6a0d3e12"
  }
}
