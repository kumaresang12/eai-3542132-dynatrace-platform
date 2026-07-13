resource "dynatrace_log_custom_source" "EAI_3538710_OVO_Logs_3" {
  name    = "EAI 3538710 OVO Logs"
  enabled = true
  scope   = "HOST_GROUP-7875BC3DCDE3E922"
  custom_log_source {
    type = "LOG_PATH_PATTERN"
    values_and_enrichment {
      custom_log_source_with_enrichment {
        path = "/var/mfcobol/es/*/console.log"
        enrichment {
          enrichment {
            type  = "attribute"
            key   = "log.file.path"
            value = "$${0}"
          }
          enrichment {
            type  = "attribute"
            key   = "log.file.name"
            value = "console.log"
          }
        }
      }
    }
  }
}
