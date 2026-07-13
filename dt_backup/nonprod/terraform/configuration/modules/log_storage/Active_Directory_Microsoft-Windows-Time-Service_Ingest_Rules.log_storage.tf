resource "dynatrace_log_storage" "Active_Directory_Microsoft-Windows-Time-Service_Ingest_Rules" {
  name            = "Active Directory 'Microsoft-Windows-Time-Service' Ingest Rules"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABEhPU1QAEDFEOUNBRkYwRjJFMzVBQjYAJGM5OWQ0ZDQzLTlmNjgtM2NkZC1hMGFkLTg0MDM1MGNjMGY5Yb7vVN4V2t6t"
  scope           = "HOST-1D9CAFF0F2E35AB6"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "winlog.provider"
      operator  = "MATCHES"
      values    = [ "Microsoft-Windows-Time-Service" ]
    }
    matcher {
      attribute = "winlog.eventid"
      operator  = "MATCHES"
      values    = [ "34", "21", "36" ]
    }
  }
}
