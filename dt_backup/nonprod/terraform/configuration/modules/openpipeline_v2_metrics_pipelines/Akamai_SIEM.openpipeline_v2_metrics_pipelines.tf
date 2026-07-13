resource "dynatrace_openpipeline_v2_metrics_pipelines" "Akamai_SIEM" {
  custom_id    = "extension:akamai-siem"
  display_name = "Akamai SIEM"
  metadata_list {
    metadata {
      entry_key   = "extension_name"
      entry_value = "com.dynatrace.extension.akamai-siem"
    }
    metadata {
      entry_key   = "extension_version"
      entry_value = "2.0.0"
    }
  }
  smartscape_node_extraction {
    processors {
      processor {
        description = "Config node ID extraction on all metrics"
        type        = "smartscapeNode"
        enabled     = true
        id          = "siem-config-metrics"
        matcher     =<<-EOT
          matchesValue(metric.key, "log.akamai-siem.*") or matchesValue(metric.key, "sfm.akamai-siem.*")
        EOT
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.akamai_siem_config"
          node_type          = "AKAMAI_SIEM_CONFIG"
          id_components {
            id_component {
              id_component          = "extension.config.id"
              referenced_field_name = "dt.extension.config.id"
            }
          }
        }
      }
    }
  }
}
