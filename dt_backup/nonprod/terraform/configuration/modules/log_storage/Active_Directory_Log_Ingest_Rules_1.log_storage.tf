resource "dynatrace_log_storage" "Active_Directory_Log_Ingest_Rules_1" {
  name            = "Active Directory Log Ingest Rules"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABEhPU1QAEDFEOUNBRkYwRjJFMzVBQjYAJDFmNTRmNTlkLWZiMGYtMzFlOC04MGRhLTI1NGQzYmViNTg2Yb7vVN4V2t6t"
  scope           = "HOST-A462298C3FD40F4A"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "Active Directory Web Services", "DFS Replication", "Directory Service", "DNS Server" ]
    }
    matcher {
      attribute = "loglevel"
      operator  = "MATCHES"
      values    = [ "ERROR", "WARN", "CRITICAL", "SEVERE" ]
    }
  }
}
