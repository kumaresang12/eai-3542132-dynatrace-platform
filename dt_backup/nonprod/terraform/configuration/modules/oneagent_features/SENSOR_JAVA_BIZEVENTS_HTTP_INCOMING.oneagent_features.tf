resource "dynatrace_oneagent_features" "SENSOR_JAVA_BIZEVENTS_HTTP_INCOMING" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_BIZEVENTS_HTTP_INCOMING"
  scope           = "environment"
}
