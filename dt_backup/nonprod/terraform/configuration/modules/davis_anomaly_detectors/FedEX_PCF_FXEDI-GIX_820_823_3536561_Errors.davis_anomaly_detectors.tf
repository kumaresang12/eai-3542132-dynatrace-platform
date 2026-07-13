resource "dynatrace_davis_anomaly_detectors" "FedEX_PCF_FXEDI-GIX_820_823_3536561_Errors" {
  description = ""
  enabled     = true
  source      = "Custom Alerts"
  title       = "FedEX_PCF_FXEDI-GIX_820_823_3536561_Errors"
  analyzer {
    name = "dt.statistics.ui.anomaly_detection.StaticThresholdAnomalyDetectionAnalyzer"
    input {
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[0].values[0]"
        value = "clwdev4-az1"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[2].name"
        value = "tag_orig"
      }
      analyzer_input_field {
        key   = "alertOnMissingData"
        value = "false"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[3].values[0]"
        value = "[ENVIRONMENT]pcf.foundation:clwdev4-az1"
      }
      analyzer_input_field {
        key   = "threshold"
        value = "1"
      }
      analyzer_input_field {
        key   = "dealertingSamples"
        value = "5"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[1].values[0]"
        value = "pcf.foundation:pcf.clwdev4-az1"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[3].name"
        value = "prop"
      }
      analyzer_input_field {
        key   = "slidingWindow"
        value = "5"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[5].values[0]"
        value = "CLOUD_FOUNDRY_FOUNDATION_NAME:clwdev4-az1"
      }
      analyzer_input_field {
        key   = "query.expression"
        value =<<-EOT
          fetch logs
          | filter cf_org_name == "3536561"
            and cf_space_name == "production"
            and cf_app_name == "GIX-EDI-820-823-Application"
            and (
              contains(toString(msg.message), "Exception occured")
              or contains(toString(msg.message), "Failed to parse Input File")
              or contains(toString(msg.message), "Not a valid input file")
              or contains(toString(msg.message), "Failed to update status of file")
              or contains(toString(msg.message), "Unable to insert")
              or contains(toString(msg.message), "Error")
            )
            and toString(msg.level) != "WARN"
            and toString(msg.level) != "INFO"
        EOT
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[0].name"
        value = "label"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].id"
        value = "wc5GgobBsbu"
      }
      analyzer_input_field {
        key   = "violatingSamples"
        value = "3"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[1].name"
        value = "tag"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[4].name"
        value = "prop2"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[2].values[0]"
        value = "PcfFoundation:pcf.clwdev4-az1"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[4].values[0]"
        value = "[ENVIRONMENT]PcfFoundation:clwdev4-az1"
      }
      analyzer_input_field {
        key   = "alertCondition"
        value = "ABOVE"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[5].name"
        value = "meta"
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
          An anomaly was detected on {metricname}. Within the sliding window, violations were detected that were {alert_condition} the threshold of {threshold}.
        EOT
      }
      property {
        key   = "event.name"
        value = "ERROR"
      }
    }
  }
  execution_settings {
    actor = "0e38ec7f-5162-478b-ae77-17fcb5eebabd"
  }
}
