resource "dynatrace_http_monitor_outage" "HTTP_CHECK-632D4E158A7A3441" {
  global_consecutive_outage_count_threshold = 3
  global_outages                            = true
  local_outages                             = false
  scope                                     = "HTTP_CHECK-632D4E158A7A3441"
}
