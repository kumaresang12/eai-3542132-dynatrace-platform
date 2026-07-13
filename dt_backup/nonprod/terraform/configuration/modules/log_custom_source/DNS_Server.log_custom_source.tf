resource "dynatrace_log_custom_source" "DNS_Server" {
  name    = "DNS Server"
  enabled = true
  scope   = "HOST-1D9CAFF0F2E35AB6"
  custom_log_source {
    type = "WINDOWS_EVENT_LOG"
    values_and_enrichment {
      custom_log_source_with_enrichment {
        path = "DNS Server"
      }
    }
  }
}
