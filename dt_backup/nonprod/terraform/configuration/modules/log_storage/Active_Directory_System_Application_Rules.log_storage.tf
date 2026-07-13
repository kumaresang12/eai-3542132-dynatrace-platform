resource "dynatrace_log_storage" "Active_Directory_System_Application_Rules" {
  name            = "Active Directory System & Application Rules"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABEhPU1QAEDFEOUNBRkYwRjJFMzVBQjYAJDc1ZDU5NjU5LTE0MmMtM2Y1Mi1iZTc4LTdhNWM5MGMyM2FhZr7vVN4V2t6t"
  scope           = "HOST-1D9CAFF0F2E35AB6"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "Windows Application Log", "Windows System Log", "Security" ]
    }
  }
}
