resource "dynatrace_log_storage" "Active_Directory_Microsoft-Windows-ADFS_Ingest_Rules_1" {
  name            = "Active Directory 'Microsoft-Windows-ADFS' Ingest Rules"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABEhPU1QAEEE0NjIyOThDM0ZENDBGNEEAJDE5NjMxNmY3LTNkYzEtMzlmYy05YTY5LTNmYTJhMGFhYzVlYr7vVN4V2t6t"
  scope           = "HOST-A462298C3FD40F4A"
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
