resource "dynatrace_http_monitor_outage" "HTTP_CHECK-F0B267437AF4E6FF" {
  global_consecutive_outage_count_threshold = 3
  global_outages                            = true
  local_outages                             = false
  scope                                     = "HTTP_CHECK-F0B267437AF4E6FF"
}
