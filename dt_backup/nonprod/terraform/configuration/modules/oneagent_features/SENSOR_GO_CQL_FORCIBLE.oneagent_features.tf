resource "dynatrace_oneagent_features" "SENSOR_GO_CQL_FORCIBLE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_GO_CQL_FORCIBLE"
  scope           = "environment"
}
