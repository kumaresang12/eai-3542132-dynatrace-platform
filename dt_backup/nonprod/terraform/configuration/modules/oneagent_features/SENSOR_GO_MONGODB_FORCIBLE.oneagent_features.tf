resource "dynatrace_oneagent_features" "SENSOR_GO_MONGODB_FORCIBLE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_GO_MONGODB_FORCIBLE"
  scope           = "environment"
}
