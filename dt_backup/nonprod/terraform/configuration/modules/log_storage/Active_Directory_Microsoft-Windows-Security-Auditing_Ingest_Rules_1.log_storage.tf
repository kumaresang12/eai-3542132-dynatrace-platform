resource "dynatrace_log_storage" "Active_Directory_Microsoft-Windows-Security-Auditing_Ingest_Rules_1" {
  name            = "Active Directory 'Microsoft-Windows-Security-Auditing' Ingest Rules"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABEhPU1QAEEE0NjIyOThDM0ZENDBGNEEAJDViZDJiZDBmLTk1NzctMzJjZC1hZTg3LTMzZDM1N2FiZTYzM77vVN4V2t6t"
  scope           = "HOST-A462298C3FD40F4A"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "winlog.provider"
      operator  = "MATCHES"
      values    = [ "Microsoft-Windows-Security-Auditing" ]
    }
    matcher {
      attribute = "winlog.eventid"
      operator  = "MATCHES"
      values    = [ "4649", "4766", "1102", "4621", "4675", "4715", "4716", "4764", "4866", "4867", "5030", "5035", "5037", "5483", "5484", "6145", "4616", "4660", "4707", "4710", "4712", "4730", "4740", "4743", "4771", "4935", "5025", "5034", "5139", "5141", "6008" ]
    }
  }
}
