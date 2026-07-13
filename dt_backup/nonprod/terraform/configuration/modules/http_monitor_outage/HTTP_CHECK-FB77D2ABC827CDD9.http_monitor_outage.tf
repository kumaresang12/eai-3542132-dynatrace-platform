resource "dynatrace_http_monitor_outage" "HTTP_CHECK-FB77D2ABC827CDD9" {
  global_consecutive_outage_count_threshold = 3
  global_outages                            = true
  local_outages                             = false
  scope                                     = "HTTP_CHECK-FB77D2ABC827CDD9"
}
