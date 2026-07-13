resource "dynatrace_log_timestamp" "HOST_GROUP-8D5C89DAAC1216C6_3538760_DB2_Log_Splitting" {
  enabled               = true
  config_item_title     = "3538760 DB2 Log Splitting "
  date_time_pattern     = ""
  insert_after          = "vu9U3hXa3q0AAAABAC1idWlsdGluOmxvZ21vbml0b3JpbmcudGltZXN0YW1wLWNvbmZpZ3VyYXRpb24ACkhPU1RfR1JPVVAAEDc4NjQyNzM4NUUzMTM4RkIAJDJhOGIyNGFlLTYzY2YtMzdiZi04NDI5LTlhZWNiMWM1ZWRlNb7vVN4V2t6t"
  scope                 = "HOST_GROUP-8D5C89DAAC1216C6"
  # skip_indented_lines = false
  timezone              = "Local time zone"
  entry_boundary {
    pattern = "LEVEL"
  }
  json_configuration {
    format_detection = true
  }
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "/db2/idsnx/db2dump/DIAG000*/db2diag.log", "/db2/idsnx/db2dump/DIAG012*/cfdiag.12*.log" ]
    }
  }
}
