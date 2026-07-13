resource "dynatrace_log_storage" "Active_Directory_Microsoft-Windows-OnlineResponder_Ingest_Rules_1" {
  name            = "Active Directory 'Microsoft-Windows-OnlineResponder' Ingest Rules"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABEhPU1QAEEE0NjIyOThDM0ZENDBGNEEAJDNiZDZjNzBkLTNmMjctM2RhOC04ZDM2LTI5NjU1NzBmMzg1N77vVN4V2t6t"
  scope           = "HOST-A462298C3FD40F4A"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "winlog.provider"
      operator  = "MATCHES"
      values    = [ "Microsoft-Windows-OnlineResponder" ]
    }
    matcher {
      attribute = "winlog.eventid"
      operator  = "MATCHES"
      values    = [ "39", "60", "92" ]
    }
  }
}
