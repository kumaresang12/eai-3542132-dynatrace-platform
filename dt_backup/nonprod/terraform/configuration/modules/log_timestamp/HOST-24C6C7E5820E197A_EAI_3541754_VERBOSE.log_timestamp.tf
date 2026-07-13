resource "dynatrace_log_timestamp" "HOST-24C6C7E5820E197A_EAI_3541754_VERBOSE" {
  enabled           = true
  config_item_title = "EAI_3541754_VERBOSE"
  date_time_pattern = ""
  insert_after      = ""
  scope             = "HOST-24C6C7E5820E197A"
  timezone          = "Local time zone"
  entry_boundary {
    pattern = "TID:"
  }
  json_configuration {
    format_detection = true
  }
}
