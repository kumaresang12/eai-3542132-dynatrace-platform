resource "dynatrace_log_events" "PCF_Application_Crash_Alert" {
  enabled = true
  query   = "matchesValue(content, \"*CRASHED*\", caseSensitive:false)"
  summary = "PCF Application Crash Alert"
  event_template {
    description   = "A PCF application crash log was detected with reason = \"CRASHED\"."
    # davis_merge = false
    event_type    = "CUSTOM_ALERT"
    title         = "PCF Application Crash Alert"
  }
}
