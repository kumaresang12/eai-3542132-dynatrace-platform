resource "dynatrace_oneagent_features" "SENSOR_GO_REDIS_FORCIBLE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_GO_REDIS_FORCIBLE"
  scope           = "environment"
}
