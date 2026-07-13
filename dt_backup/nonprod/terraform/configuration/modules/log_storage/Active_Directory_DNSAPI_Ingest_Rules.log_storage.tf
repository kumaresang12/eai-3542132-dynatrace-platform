resource "dynatrace_log_storage" "Active_Directory_DNSAPI_Ingest_Rules" {
  name            = "Active Directory 'DNSAPI' Ingest Rules"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABEhPU1QAEDFEOUNBRkYwRjJFMzVBQjYAJGFjY2FlNmIxLTI4ZGUtMzkxYi1iMDQxLTI3ZTViNDhkODMyM77vVN4V2t6t"
  scope           = "HOST-1D9CAFF0F2E35AB6"
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
