resource "dynatrace_log_timestamp" "HOST_GROUP-BDB78D3349B81664_3539152_Timestamp_Rule" {
  enabled           = true
  config_item_title = "3539152 Timestamp Rule"
  date_time_pattern = "%Y-%m-%d %H:%M:%S"
  insert_after      = "vu9U3hXa3q0AAAABAC1idWlsdGluOmxvZ21vbml0b3JpbmcudGltZXN0YW1wLWNvbmZpZ3VyYXRpb24ACkhPU1RfR1JPVVAAEEE4NjNGNkM4MEU0RTlBMTgAJDFjYWQ4MzM5LTE0YTMtM2ZhOC04NmNiLTA5ZDQ1MjQyNGRkNb7vVN4V2t6t"
  scope             = "HOST_GROUP-BDB78D3349B81664"
  timezone          = "UTC"
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
