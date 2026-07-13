resource "dynatrace_log_storage" "Active_Directory_Microsoft-Windows-GroupPolicy_Ingest_Rules" {
  name            = "Active Directory 'Microsoft-Windows-GroupPolicy' Ingest Rules"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABEhPU1QAEDFEOUNBRkYwRjJFMzVBQjYAJDRjNGI1NGJhLWNhZTctMzM3NC04MjkzLTQ0M2NhNDU4MjMyML7vVN4V2t6t"
  scope           = "HOST-1D9CAFF0F2E35AB6"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "winlog.provider"
      operator  = "MATCHES"
      values    = [ "Microsoft-Windows-GroupPolicy" ]
    }
    matcher {
      attribute = "winlog.eventid"
      operator  = "MATCHES"
      values    = [ "8000", "8001", "8002", "8003", "8004", "8005", "8006", "8007", "7000", "7001", "7002", "7003", "7004", "7005", "7006", "7007" ]
    }
  }
}
