resource "dynatrace_log_storage" "Active_Directory_Microsoft-Windows-Time-Service_Ingest_Rules_1" {
  name            = "Active Directory 'Microsoft-Windows-Time-Service' Ingest Rules"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABEhPU1QAEEE0NjIyOThDM0ZENDBGNEEAJDFhODBmZTg3LTVjMTItM2RlNy05N2Q5LTgzZWQ2YjRiY2U3Yr7vVN4V2t6t"
  scope           = "HOST-A462298C3FD40F4A"
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
