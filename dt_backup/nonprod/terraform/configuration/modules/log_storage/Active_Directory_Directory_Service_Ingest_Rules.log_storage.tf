resource "dynatrace_log_storage" "Active_Directory_Directory_Service_Ingest_Rules" {
  name            = "Active Directory 'Directory Service' Ingest Rules"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABEhPU1QAEDFEOUNBRkYwRjJFMzVBQjYAJDZkMjFiZGU0LTQ5ZDYtMzIzMS1iNWIxLTczNGUyNzM5M2ZiZr7vVN4V2t6t"
  scope           = "HOST-1D9CAFF0F2E35AB6"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "Directory Service" ]
    }
    matcher {
      attribute = "winlog.eventid"
      operator  = "MATCHES"
      values    = [ "1311", "1644", "1864", "1865", "2042", "2087", "2089", "13508" ]
    }
  }
}
