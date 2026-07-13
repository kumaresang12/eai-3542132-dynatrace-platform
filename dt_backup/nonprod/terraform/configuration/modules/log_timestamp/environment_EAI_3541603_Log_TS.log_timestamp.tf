resource "dynatrace_log_timestamp" "environment_EAI_3541603_Log_TS" {
  enabled               = true
  config_item_title     = "EAI_3541603 Log TS"
  date_time_pattern     = "%Y-%m-%d %H:%M:%S"
  insert_after          = "vu9U3hXa3q0AAAABAC1idWlsdGluOmxvZ21vbml0b3JpbmcudGltZXN0YW1wLWNvbmZpZ3VyYXRpb24ABnRlbmFudAAGdGVuYW50ACQzYWNkNjczMi01NmUyLTNmODAtYjYxMS04NDJhMGQzZGFlNzi-71TeFdrerQ"
  scope                 = "environment"
  # skip_indented_lines = false
  timezone              = "UTC"
  entry_boundary {
    pattern = "DEBUG"
  }
  json_configuration {
    format_detection = true
  }
}
