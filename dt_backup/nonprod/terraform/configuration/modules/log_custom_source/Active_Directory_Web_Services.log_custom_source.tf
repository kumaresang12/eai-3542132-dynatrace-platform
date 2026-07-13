resource "dynatrace_log_custom_source" "Active_Directory_Web_Services" {
  name    = "Active Directory Web Services"
  enabled = true
  scope   = "HOST-1D9CAFF0F2E35AB6"
  custom_log_source {
    type = "WINDOWS_EVENT_LOG"
    values_and_enrichment {
      custom_log_source_with_enrichment {
        path = "Active Directory Web Services"
      }
    }
  }
}
