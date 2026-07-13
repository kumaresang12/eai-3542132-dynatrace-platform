resource "dynatrace_log_oneagent" "HOST_GROUP-A456F7E439B0B0D9" {
  container_timezone_heuristic_enabled = true
  containers_logs_detection_enabled    = true
  date_search_limit_bytes              = 64
  default_timezone                     = "US/Central"
  event_log_query_timeout_sec          = 5
  iisdetection_enabled                 = true
  log_scanner_linux_nfs_enabled        = false
  max_lgis_per_entity_count            = 200
  min_binary_detection_limit_bytes     = 512
  monitor_own_logs_enabled             = false
  open_log_files_detection_enabled     = true
  scope                                = "HOST_GROUP-A456F7E439B0B0D9"
  severity_detection_limit_bytes       = 100
  severity_detection_lines_limit       = 2
  system_logs_detection_enabled        = true
}
