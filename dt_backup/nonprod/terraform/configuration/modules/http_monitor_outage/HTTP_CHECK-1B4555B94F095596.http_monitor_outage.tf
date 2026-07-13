resource "dynatrace_http_monitor_outage" "HTTP_CHECK-1B4555B94F095596" {
  global_consecutive_outage_count_threshold = 1
  global_outages                            = true
  local_outages                             = false
  scope                                     = "HTTP_CHECK-1B4555B94F095596"
}
