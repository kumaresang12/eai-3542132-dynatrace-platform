resource "dynatrace_http_monitor_outage" "HTTP_CHECK-E537F42A96E7F85F" {
  global_consecutive_outage_count_threshold = 3
  global_outages                            = true
  local_outages                             = false
  scope                                     = "HTTP_CHECK-E537F42A96E7F85F"
}
