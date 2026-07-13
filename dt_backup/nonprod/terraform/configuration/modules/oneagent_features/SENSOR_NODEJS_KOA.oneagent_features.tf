resource "dynatrace_oneagent_features" "SENSOR_NODEJS_KOA" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_KOA"
  scope           = "environment"
}
