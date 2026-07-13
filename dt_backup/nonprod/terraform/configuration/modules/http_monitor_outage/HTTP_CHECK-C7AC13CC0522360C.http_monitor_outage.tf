resource "dynatrace_http_monitor_outage" "HTTP_CHECK-C7AC13CC0522360C" {
  global_consecutive_outage_count_threshold = 3
  global_outages                            = true
  local_outages                             = false
  scope                                     = "HTTP_CHECK-C7AC13CC0522360C"
}
