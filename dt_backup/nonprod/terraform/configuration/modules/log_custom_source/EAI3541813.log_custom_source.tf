resource "dynatrace_log_custom_source" "EAI3541813" {
  name    = "EAI3541813"
  enabled = true
  scope   = "environment"
  custom_log_source {
    type = "LOG_PATH_PATTERN"
    values_and_enrichment {
      custom_log_source_with_enrichment {
        path = "/var/fedex/freight/eai3541813/data/sales_tech/admin/*/*.log"
        enrichment {
          enrichment {
            type  = "attribute"
            key   = "log.file.path"
            value = "$${0}"
          }
          enrichment {
            type  = "attribute"
            key   = "log.file.name"
            value = "$${2}.log"
          }
        }
      }
    }
  }
}
