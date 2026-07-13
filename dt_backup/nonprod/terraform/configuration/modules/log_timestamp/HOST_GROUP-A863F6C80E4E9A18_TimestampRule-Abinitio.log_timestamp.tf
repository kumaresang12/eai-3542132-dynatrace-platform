resource "dynatrace_log_timestamp" "HOST_GROUP-A863F6C80E4E9A18_TimestampRule-Abinitio" {
  enabled               = true
  config_item_title     = "TimestampRule-Abinitio"
  date_time_pattern     = ""
  insert_after          = "vu9U3hXa3q0AAAABAC1idWlsdGluOmxvZ21vbml0b3JpbmcudGltZXN0YW1wLWNvbmZpZ3VyYXRpb24ACkhPU1RfR1JPVVAAEDhENUM4OURBQUMxMjE2QzYAJDBjYzg5MzEzLTU4ZWYtM2Y0My05YmQ2LWMzNzgyMDQyMWI4NL7vVN4V2t6t"
  scope                 = "HOST_GROUP-A863F6C80E4E9A18"
  # skip_indented_lines = false
  timezone              = "Local time zone"
  entry_boundary {
    pattern = "Phase"
  }
  json_configuration {
    format_detection = true
  }
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "/var/fedex/freight/eai3541813/data/sales_tech/admin/*/log/*.log" ]
    }
  }
}
