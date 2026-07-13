resource "dynatrace_log_storage" "Active_Directory_Microsoft-Windows-CertificationAuthority_Ingest_Rules_1" {
  name            = "Active Directory 'Microsoft-Windows-CertificationAuthority' Ingest Rules"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABEhPU1QAEEE0NjIyOThDM0ZENDBGNEEAJGZkNzE3MGFjLTRiYzktMzY5OS1hMDBiLTUwY2QzYjkzY2Q2NL7vVN4V2t6t"
  scope           = "HOST-A462298C3FD40F4A"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "winlog.provider"
      operator  = "MATCHES"
      values    = [ "Microsoft-Windows-CertificationAuthority" ]
    }
    matcher {
      attribute = "winlog.eventid"
      operator  = "MATCHES"
      values    = [ "0", "3", "5", "9", "16", "17", "19", "20", "21", "22", "23", "28", "33", "34", "35", "38", "39", "40", "42", "43", "44", "48", "49", "51", "59", "60", "63", "65", "74", "75", "78", "82", "83", "86", "87", "90", "92", "94", "95", "96", "98", "99", "100", "102", "106", "107", "130", "132" ]
    }
  }
}
