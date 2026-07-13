resource "dynatrace_log_storage" "Active_Directory_Directory_Service_Ingest_Rules_1" {
  name            = "Active Directory 'Directory Service' Ingest Rules"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABEhPU1QAEEE0NjIyOThDM0ZENDBGNEEAJGUyMTY4ZWU2LTUwYjAtMzAwMS1hZGE3LWIwYTI4NzllNTkxYb7vVN4V2t6t"
  scope           = "HOST-A462298C3FD40F4A"
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
