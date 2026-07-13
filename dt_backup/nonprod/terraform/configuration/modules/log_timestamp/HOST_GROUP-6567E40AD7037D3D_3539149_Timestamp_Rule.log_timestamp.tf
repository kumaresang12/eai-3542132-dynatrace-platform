resource "dynatrace_log_timestamp" "HOST_GROUP-6567E40AD7037D3D_3539149_Timestamp_Rule" {
  enabled               = true
  config_item_title     = "3539149 Timestamp Rule"
  date_time_pattern     = "%Y-%m-%d %H:%M:%S"
  insert_after          = "vu9U3hXa3q0AAAABAC1idWlsdGluOmxvZ21vbml0b3JpbmcudGltZXN0YW1wLWNvbmZpZ3VyYXRpb24ABEhPU1QAEDI0QzZDN0U1ODIwRTE5N0EAJDBhZGNjMGY2LWNkZmQtMzc5Ny1iODQ5LTAwN2Q5YTFjMzVjZL7vVN4V2t6t"
  scope                 = "HOST_GROUP-6567E40AD7037D3D"
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
