resource "dynatrace_log_custom_source" "EAI-3541487" {
  name    = "EAI-3541487"
  enabled = true
  scope   = "HOST_GROUP-6337800A24A04BD3"
  custom_log_source {
    type = "LOG_PATH_PATTERN"
    values_and_enrichment {
      custom_log_source_with_enrichment {
        path = "/var/fedex/eai3541487/FXF-Tracking-Number-Assigner-Config-Server.log"
        enrichment {
          enrichment {
            type  = "attribute"
            key   = "log.file.path"
            value = "$${0}"
          }
          enrichment {
            type  = "attribute"
            key   = "log.file.name"
            value = "FXF-Tracking-Number-Assigner-Config-Server.log"
          }
        }
      }
      custom_log_source_with_enrichment {
        path = "/var/fedex/eai3541487/FXF-Tracking-Number-Assigner.log"
        enrichment {
          enrichment {
            type  = "attribute"
            key   = "log.file.path"
            value = "$${0}"
          }
          enrichment {
            type  = "attribute"
            key   = "log.file.name"
            value = "FXF-Tracking-Number-Assigner.log"
          }
        }
      }
    }
  }
}
