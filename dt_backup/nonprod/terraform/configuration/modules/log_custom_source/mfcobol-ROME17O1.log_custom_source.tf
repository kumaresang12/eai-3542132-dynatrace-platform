resource "dynatrace_log_custom_source" "mfcobol-ROME17O1" {
  name    = "mfcobol-ROME17O1"
  enabled = true
  scope   = "HOST_GROUP-69FC3B60E0407DCF"
  custom_log_source {
    type = "LOG_PATH_PATTERN"
    values_and_enrichment {
      custom_log_source_with_enrichment {
        path = "/var/mfcobol/es/ROME17O1/log*.html"
      }
    }
  }
}
