resource "dynatrace_oneagent_features" "SENSOR_GO_BIZEVENTS_HTTP_INCOMING" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_GO_BIZEVENTS_HTTP_INCOMING"
  scope           = "environment"
}
