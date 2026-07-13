resource "dynatrace_log_custom_source" "Directory_Service_1" {
  name    = "Directory Service"
  enabled = true
  scope   = "HOST-A462298C3FD40F4A"
  custom_log_source {
    type = "WINDOWS_EVENT_LOG"
    values_and_enrichment {
      custom_log_source_with_enrichment {
        path = "Directory Service"
      }
    }
  }
}
