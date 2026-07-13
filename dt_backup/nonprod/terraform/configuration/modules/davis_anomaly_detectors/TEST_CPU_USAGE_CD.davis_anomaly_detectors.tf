resource "dynatrace_davis_anomaly_detectors" "TEST_CPU_USAGE_CD" {
  description = ""
  enabled     = true
  source      = "Custom Alerts"
  title       = "TEST_CPU_USAGE_CD"
  analyzer {
    name = "dt.statistics.ui.anomaly_detection.StaticThresholdAnomalyDetectionAnalyzer"
    input {
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[9].name"
        value = "tag"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[0].values[0]"
        value = "3535515"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[2].name"
        value = "winTag"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[3].values[0]"
        value = "[ENVIRONMENT]fedex.eai_num:3535515"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[7].name"
        value = "pcfTag"
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
        key   = "query.filterSegments[0].variables[7].values[0]"
        value = "pcf.organization_name:3535515"
      }
      analyzer_input_field {
        key   = "slidingWindow"
        value = "5"
      }
      analyzer_input_field {
        key   = "violatingSamples"
        value = "3"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[6].name"
        value = "envSc"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[1].name"
        value = "linuxTag"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[4].name"
        value = "envprop2"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[8].values[0]"
        value = "PcfOrganization:3535515"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[4].values[0]"
        value = "[ENVIRONMENT]fxf.eai_num:3535515"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[8].name"
        value = "pcfTag2"
      }
      analyzer_input_field {
        key   = "alertOnMissingData"
        value = "false"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[9].values[0]"
        value = "EAI:3535515"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[1].values[0]"
        value = "fedex.eai_num:3535515"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[3].name"
        value = "envprop1"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[5].values[0]"
        value = "[ENVIRONMENT]fxf-eai-num:3535515"
      }
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
            "c0046910.test.cloud.fedex.com",
            "c0046911.test.cloud.fedex.com"
          )
        EOT
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[0].name"
        value = "label"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].id"
        value = "kIt4QgKlEi0"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[2].values[0]"
        value = "fxf.eai_num:3535515"
      }
      analyzer_input_field {
        key   = "alertCondition"
        value = "ABOVE"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[5].name"
        value = "envprop3"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[6].values[0]"
        value = "[ENVIRONMENT]dt.security_context:3535515"
      }
    }
  }
  event_template {
    properties {
      property {
        key   = "dt.source_entity"
        value = "{dt.source_entity}"
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
        value = "TEST_CPU_USAGE_CD"
      }
    }
  }
  execution_settings {
    actor = "aa582b26-04f9-447a-8655-91984ace5212"
  }
}
