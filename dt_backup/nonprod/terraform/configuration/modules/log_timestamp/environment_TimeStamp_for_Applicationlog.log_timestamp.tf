resource "dynatrace_log_timestamp" "environment_TimeStamp_for_Applicationlog" {
  enabled               = false
  config_item_title     = "TimeStamp_for_Applicationlog"
  date_time_pattern     = "%Y-%m-%dT%H:%M:%S"
  insert_after          = "vu9U3hXa3q0AAAABAC1idWlsdGluOmxvZ21vbml0b3JpbmcudGltZXN0YW1wLWNvbmZpZ3VyYXRpb24ABnRlbmFudAAGdGVuYW50ACQ1NTc0MjM3Yy1hNjdlLTM1YWMtODlkOS0yN2JkYTgzZWJiZWO-71TeFdrerQ"
  scope                 = "environment"
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
      values    = [ "/var/fedex/eai*/*/*/*log" ]
    }
  }
}
