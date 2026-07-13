resource "dynatrace_log_storage" "Active_Directory_Microsoft-Windows-GroupPolicy_Ingest_Rules_1" {
  name            = "Active Directory 'Microsoft-Windows-GroupPolicy' Ingest Rules"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABEhPU1QAEEE0NjIyOThDM0ZENDBGNEEAJDM2ODE0NzQyLTU5ZDEtM2U2ZS05NGRhLTM1MGM2ZWE2ODFkMr7vVN4V2t6t"
  scope           = "HOST-A462298C3FD40F4A"
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
