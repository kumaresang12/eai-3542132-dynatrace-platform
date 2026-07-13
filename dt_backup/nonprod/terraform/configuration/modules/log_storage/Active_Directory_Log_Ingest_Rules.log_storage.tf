resource "dynatrace_log_storage" "Active_Directory_Log_Ingest_Rules" {
  name            = "Active Directory Log Ingest Rules"
  enabled         = true
  insert_after    = ""
  scope           = "HOST-1D9CAFF0F2E35AB6"
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
