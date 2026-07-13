resource "dynatrace_log_storage" "Active_Directory_Microsoft-Windows-Directory-Services-SAM_Ingest_Rules" {
  name            = "Active Directory 'Microsoft-Windows-Directory-Services-SAM' Ingest Rules"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABEhPU1QAEDFEOUNBRkYwRjJFMzVBQjYAJDFiZjBkYzYyLWFmYmMtM2ExNS1iY2FmLTNiMzRlMDJkYTIzML7vVN4V2t6t"
  scope           = "HOST-1D9CAFF0F2E35AB6"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "winlog.provider"
      operator  = "MATCHES"
      values    = [ "Microsoft-Windows-Directory-Services-SAM" ]
    }
    matcher {
      attribute = "winlog.eventid"
      operator  = "MATCHES"
      values    = [ "16643", "12299" ]
    }
  }
}
