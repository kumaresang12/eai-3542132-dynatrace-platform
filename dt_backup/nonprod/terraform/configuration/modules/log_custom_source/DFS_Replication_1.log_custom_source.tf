resource "dynatrace_log_custom_source" "DFS_Replication_1" {
  name    = "DFS Replication"
  enabled = true
  scope   = "HOST-A462298C3FD40F4A"
  custom_log_source {
    type = "WINDOWS_EVENT_LOG"
    values_and_enrichment {
      custom_log_source_with_enrichment {
        path = "DFS Replication"
      }
    }
  }
}
