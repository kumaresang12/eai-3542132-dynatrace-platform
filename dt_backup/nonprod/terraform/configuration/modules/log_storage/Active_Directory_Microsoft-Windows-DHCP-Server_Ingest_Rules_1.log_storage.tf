resource "dynatrace_log_storage" "Active_Directory_Microsoft-Windows-DHCP-Server_Ingest_Rules_1" {
  name            = "Active Directory 'Microsoft-Windows-DHCP-Server' Ingest Rules"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABEhPU1QAEEE0NjIyOThDM0ZENDBGNEEAJDYyM2JhZjRiLTcwYTUtMzgxYS1iZjdhLTdkNmU3N2Q0YTQwNL7vVN4V2t6t"
  scope           = "HOST-A462298C3FD40F4A"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "winlog.provider"
      operator  = "MATCHES"
      values    = [ "Microsoft-Windows-DHCP-Server" ]
    }
    matcher {
      attribute = "winlog.eventid"
      operator  = "MATCHES"
      values    = [ "73", "74", "1001", "1002", "1003", "1004", "1021", "1025", "1027", "1050", "1051", "1052", "1053", "1054", "1055", "1056", "1057", "1058" ]
    }
  }
}
