resource "dynatrace_davis_anomaly_detectors" "DB2_Purescale_Hadr_Connection_State_Alert" {
  description = ""
  enabled     = true
  source      = "Notebooks"
  title       = "DB2 Purescale Hadr Connection State Alert"
  analyzer {
    name = "dt.statistics.ui.anomaly_detection.StaticThresholdAnomalyDetectionAnalyzer"
    input {
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[9].name"
        value = "tag"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[0].values[0]"
        value = "3538760"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[2].name"
        value = "winTag"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[3].values[0]"
        value = "[ENVIRONMENT]fedex.eai_num:3538760"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[7].name"
        value = "pcfTag"
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
        key   = "query.filterSegments[0].variables[7].values[0]"
        value = "pcf.organization_name:3538760"
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
        value = "PcfOrganization:3538760"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[4].values[0]"
        value = "[ENVIRONMENT]fxf.eai_num:3538760"
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
        value = "EAI:3538760"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[1].values[0]"
        value = "fedex.eai_num:3538760"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[3].name"
        value = "envprop1"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[5].values[0]"
        value = "[ENVIRONMENT]fxf-eai-num:3538760"
      }
      analyzer_input_field {
        key   = "query.expression"
        value = "timeseries { avg(db2.hadr_connect_status), value.A = avg(db2.hadr_connect_status, scalar: true) }, by: { primary_member_host, standby_member_host }"
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
        value = "fxf.eai_num:3538760"
      }
      analyzer_input_field {
        key   = "alertCondition"
        value = "BELOW"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[5].name"
        value = "envprop3"
      }
      analyzer_input_field {
        key   = "query.filterSegments[0].variables[6].values[0]"
        value = "[ENVIRONMENT]dt.security_context:3538760"
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
        value = "DB2 Purescale - Hadr Connection State Alert"
      }
      property {
        key   = "primary_member_host"
        value = "{primary_member_host}"
      }
      property {
        key   = "standby_member_host"
        value = "{standby_member_host}"
      }
    }
  }
  execution_settings {
    actor = "394d900d-5621-4a54-b125-2be5c0910717"
  }
}
