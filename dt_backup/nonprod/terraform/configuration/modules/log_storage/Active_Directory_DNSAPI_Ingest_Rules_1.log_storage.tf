resource "dynatrace_log_storage" "Active_Directory_DNSAPI_Ingest_Rules_1" {
  name            = "Active Directory 'DNSAPI' Ingest Rules"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABEhPU1QAEEE0NjIyOThDM0ZENDBGNEEAJDFiOTg0OTAwLTIxMTMtMzc1NS1hODFmLWY1OWZiNzI4NDBlML7vVN4V2t6t"
  scope           = "HOST-A462298C3FD40F4A"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "winlog.provider"
      operator  = "MATCHES"
      values    = [ "DNSAPI" ]
    }
    matcher {
      attribute = "winlog.eventid"
      operator  = "MATCHES"
      values    = [ "11150", "11162", "11151", "11155", "11163", "11167", "11154", "11166", "11152", "11153", "11164", "11165" ]
    }
  }
}
