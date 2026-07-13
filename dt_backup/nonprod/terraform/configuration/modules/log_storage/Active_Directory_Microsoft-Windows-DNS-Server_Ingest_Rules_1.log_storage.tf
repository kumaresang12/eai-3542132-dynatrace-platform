resource "dynatrace_log_storage" "Active_Directory_Microsoft-Windows-DNS-Server_Ingest_Rules_1" {
  name            = "Active Directory 'Microsoft-Windows-DNS-Server' Ingest Rules"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABEhPU1QAEEE0NjIyOThDM0ZENDBGNEEAJGY3YjhlOWJlLTVkY2EtMzg4Mi1iOGFiLTRjM2QyMzM5MGZmM77vVN4V2t6t"
  scope           = "HOST-A462298C3FD40F4A"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "winlog.provider"
      operator  = "MATCHES"
      values    = [ "Microsoft-Windows-DNS-Server" ]
    }
    matcher {
      attribute = "winlog.eventid"
      operator  = "MATCHES"
      values    = [ "512", "513", "515", "516", "518", "4013" ]
    }
  }
}
