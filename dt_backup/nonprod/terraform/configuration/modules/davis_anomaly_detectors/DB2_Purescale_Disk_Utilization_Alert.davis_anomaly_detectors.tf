resource "dynatrace_davis_anomaly_detectors" "DB2_Purescale_Disk_Utilization_Alert" {
  description = ""
  enabled     = true
  source      = "Custom Alerts"
  title       = "DB2 Purescale Disk Utilization Alert"
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
        value = "70"
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
        value =<<-EOT
          timeseries { avg(dt.host.disk.used.percent), value.A = avg(dt.host.disk.used.percent, scalar: true) }, by: { dt.entity.host, dt.entity.disk }, filter: { matchesValue(entityAttr(dt.entity.disk, "entity.name"), { "/db2home", "/", "/tmp", "/opt", "/opt/ibm/db2" }) AND ( matchesValue(host.name, "vrh1105*") OR matchesValue(host.name, "irh1103*") ) }
          | fieldsAdd dt.entity.host.name = entityName(dt.entity.host)
          | fieldsAdd dt.entity.disk.name = entityName(dt.entity.disk)
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
        value = "fxf.eai_num:3538760"
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
        value = "[ENVIRONMENT]dt.security_context:3538760"
      }
    }
  }
  event_template {
    properties {
      property {
        key   = "dt.source_entity"
        value = "{dt.entity.host}"
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
        value = "DB2 Purescale - Disk Utilization Alert"
      }
      property {
        key   = "host.name"
        value = "{host.name}"
      }
    }
  }
  execution_settings {
    actor = "394d900d-5621-4a54-b125-2be5c0910717"
  }
}
