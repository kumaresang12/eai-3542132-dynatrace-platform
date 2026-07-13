resource "dynatrace_davis_anomaly_detectors" "FedEX_PCF_FXEDI-PURCHT_3536650_Errors-test" {
  description = ""
  enabled     = false
  source      = "Notebooks"
  title       = "FedEX_PCF_FXEDI-PURCHT_3536650_Errors - test"
  analyzer {
    name = "dt.statistics.ui.anomaly_detection.StaticThresholdAnomalyDetectionAnalyzer"
    input {
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[9].name"
        value = "tag"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[0].values[0]"
        value = "3536650"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[2].name"
        value = "winTag"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[3].values[0]"
        value = "[ENVIRONMENT]fedex.eai_num:3536650"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[7].name"
        value = "pcfTag"
      }
      analyzer_input_field {
        key   = "threshold"
        value = "0"
      }
      analyzer_input_field {
        key   = "dealertingSamples"
        value = "3"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[7].values[0]"
        value = "pcf.organization_name:3536650"
      }
      analyzer_input_field {
        key   = "slidingWindow"
        value = "3"
      }
      analyzer_input_field {
        key   = "violatingSamples"
        value = "1"
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
        value = "PcfOrganization:3536650"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[4].values[0]"
        value = "[ENVIRONMENT]fxf.eai_num:3536650"
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
        value = "EAI:3536650"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[1].values[0]"
        value = "fedex.eai_num:3536650"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[3].name"
        value = "envprop1"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[5].values[0]"
        value = "[ENVIRONMENT]fxf-eai-num:3536650"
      }
      analyzer_input_field {
        key   = "query.expression"
        value =<<-EOT
          fetch logs
          | filter PcfOrganization == "3536650"AND PcfSpace == "release"
          | filter ((PcfApplication == "FXF-211-Outbound"AND
                (matchesPhrase(content, "Input File is Invalid") OR
                 matchesPhrase(content, "File failed") OR
                 matchesPhrase(content, "Exception occured") OR
                 matchesPhrase(content, "Error while mapping") OR
                 matchesPhrase(content, "Tracking info not found In SEFS") OR
                 matchesPhrase(content, "Exception while Sending Error Email"))
              )
              OR
              (PcfApplication != "FXF-211-Outbound" AND
               loglevel == "ERROR" AND
               NOT matchesPhrase(content, "The token for service 3536650 was generated") AND
               NOT matchesPhrase(content, "routererror") AND
               NOT matchesPhrase(content, "Sefs Response does not contain matchResponseSetList") AND
               NOT matchesPhrase(content, "errorChannel") AND
               NOT matchesPhrase(content, "errorLogger") AND
               NOT matchesPhrase(content, "trying 1") AND
               NOT matchesPhrase(content, "trying 2") AND
               NOT matchesPhrase(content, "failed to process fallback is the method") AND
               NOT matchesPhrase(content, "failed to processed fallback is the method") AND
               NOT matchesPhrase(content, "Tracking Id not found in SEFS response") AND
               NOT matchesPhrase(content, "Possibly consider using a shorter maxLifetime") AND
               NOT matchesPhrase(content, "Trailer is Empty in Purchased_TRLR") AND
               NOT matchesPhrase(content, "A connection failed but has been re") AND
               NOT matchesPhrase(content, "Skipping chunk because of Unable to Find") AND
               NOT matchesPhrase(content, "received duplicte record"))
            )
          | filter loglevel != "WARN" AND loglevel != "INFO"
          | makeTimeseries count(), interval: 1m
          
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
        value = "fxf.eai_num:3536650"
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
        value = "[ENVIRONMENT]dt.security_context:3536650"
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
        value = "Monitors all EAI 3536650 apps every 15 minutes. Triggers when the 211-Outbound app logs file processing failures (invalid input, mapping errors, SEFS lookup failures, or email send failures), or when any other app in the org logs an ERROR that isn't known noise. Sends an email notification if any matching error is found"
      }
      property {
        key   = "pcf.organization_name"
        value = "3536650"
      }
    }
  }
  execution_settings {
    actor = "d4d46fe1-a769-4510-a073-f4f86bbacb59"
  }
}
