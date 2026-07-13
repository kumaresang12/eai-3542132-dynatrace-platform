resource "dynatrace_http_monitor_outage" "HTTP_CHECK-E0B9193B7BEB3CEF" {
  global_consecutive_outage_count_threshold = 3
  global_outages                            = true
  local_outages                             = false
  scope                                     = "HTTP_CHECK-E0B9193B7BEB3CEF"
}
