resource "dynatrace_http_monitor_outage" "HTTP_CHECK-6C969ACD4065FD75" {
  global_consecutive_outage_count_threshold = 3
  global_outages                            = true
  local_outages                             = false
  scope                                     = "HTTP_CHECK-6C969ACD4065FD75"
}
