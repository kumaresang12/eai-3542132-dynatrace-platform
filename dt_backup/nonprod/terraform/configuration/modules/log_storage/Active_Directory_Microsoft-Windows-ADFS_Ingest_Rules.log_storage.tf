resource "dynatrace_log_storage" "Active_Directory_Microsoft-Windows-ADFS_Ingest_Rules" {
  name            = "Active Directory 'Microsoft-Windows-ADFS' Ingest Rules"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABEhPU1QAEDFEOUNBRkYwRjJFMzVBQjYAJDIyYzZhM2UxLWU1NWItM2JjYS1hNmY1LTc0YTEzM2FjZTRlZr7vVN4V2t6t"
  scope           = "HOST-1D9CAFF0F2E35AB6"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "winlog.provider"
      operator  = "MATCHES"
      values    = [ "Microsoft-Windows-ADFS" ]
    }
    matcher {
      attribute = "winlog.eventid"
      operator  = "MATCHES"
      values    = [ "102", "104", "111", "356", "385", "509", "546", "549", "1034", "1036" ]
    }
  }
}
