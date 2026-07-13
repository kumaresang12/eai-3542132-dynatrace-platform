resource "dynatrace_log_custom_source" "EAI_3538710_OVO_Logs" {
  name    = "EAI 3538710 OVO Logs"
  enabled = true
  scope   = "HOST-1972841B96BE96A8"
  custom_log_source {
    type = "LOG_PATH_PATTERN"
    values_and_enrichment {
      custom_log_source_with_enrichment {
        path = "/var/mfcobol/es/ROME17O1/log*.html"
        enrichment {
          enrichment {
            type  = "attribute"
            key   = "log.file.path"
            value = "$${0}"
          }
          enrichment {
            type  = "attribute"
            key   = "log.file.name"
            value = "log$${1}.html"
          }
        }
      }
    }
  }
}
