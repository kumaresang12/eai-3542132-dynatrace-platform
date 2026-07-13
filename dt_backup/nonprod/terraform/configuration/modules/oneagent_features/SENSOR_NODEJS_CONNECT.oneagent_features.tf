resource "dynatrace_oneagent_features" "SENSOR_NODEJS_CONNECT" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_CONNECT"
  scope           = "environment"
}
