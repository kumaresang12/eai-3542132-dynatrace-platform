resource "dynatrace_log_timestamp" "environment_ISO_8601_format" {
  enabled               = true
  config_item_title     = "ISO 8601 format"
  date_time_pattern     = "%Y-%m-%d %H:%M:%S"
  insert_after          = "vu9U3hXa3q0AAAABAC1idWlsdGluOmxvZ21vbml0b3JpbmcudGltZXN0YW1wLWNvbmZpZ3VyYXRpb24ACkhPU1RfR1JPVVAAEEJEQjc4RDMzNDlCODE2NjQAJGYyYWNlMWU2LTEwMGUtMzNiZi1iNzIwLWVjOTJjNjU5MDFjNb7vVN4V2t6t"
  scope                 = "environment"
  # skip_indented_lines = false
  timezone              = "UTC"
  entry_boundary {
  }
  json_configuration {
    format_detection = true
  }
}
