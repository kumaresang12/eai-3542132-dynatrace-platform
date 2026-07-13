resource "dynatrace_log_timestamp" "HOST_GROUP-786427385E3138FB_3539148_Timestamp_Rule" {
  enabled               = true
  config_item_title     = "3539148 Timestamp Rule"
  date_time_pattern     = "%Y-%m-%d %H:%M:%S"
  insert_after          = "vu9U3hXa3q0AAAABAC1idWlsdGluOmxvZ21vbml0b3JpbmcudGltZXN0YW1wLWNvbmZpZ3VyYXRpb24ACkhPU1RfR1JPVVAAEDY1NjdFNDBBRDcwMzdEM0QAJDJlZGY3NjIzLWM5NDMtMzk1ZC04OWYzLWViMjM2ZjhjOTZmYb7vVN4V2t6t"
  scope                 = "HOST_GROUP-786427385E3138FB"
  # skip_indented_lines = false
  timezone              = "UTC"
  entry_boundary {
  }
  json_configuration {
    format_detection = true
  }
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "/var/fedex/eai*/logs/*.log" ]
    }
  }
}
