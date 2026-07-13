resource "dynatrace_oneagent_features" "SENSOR_JAVA_BIZEVENTS_HTTP_OUTGOING" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_BIZEVENTS_HTTP_OUTGOING"
  scope           = "environment"
}
