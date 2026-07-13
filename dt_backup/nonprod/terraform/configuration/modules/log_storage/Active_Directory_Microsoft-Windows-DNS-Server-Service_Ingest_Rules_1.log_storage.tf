resource "dynatrace_log_storage" "Active_Directory_Microsoft-Windows-DNS-Server-Service_Ingest_Rules_1" {
  name            = "Active Directory 'Microsoft-Windows-DNS-Server-Service' Ingest Rules"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABEhPU1QAEEE0NjIyOThDM0ZENDBGNEEAJDVlYTJjODVlLWYxZTgtM2U5MS04YjIxLTM3Y2RjMTVmNjgwZr7vVN4V2t6t"
  scope           = "HOST-A462298C3FD40F4A"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "winlog.provider"
      operator  = "MATCHES"
      values    = [ "Microsoft-Windows-DNS-Server-Service" ]
    }
    matcher {
      attribute = "winlog.eventid"
      operator  = "MATCHES"
      values    = [ "6525", "6527", "6702" ]
    }
  }
}
