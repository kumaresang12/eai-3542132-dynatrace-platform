resource "dynatrace_oneagent_features" "SENSOR_PHP_SLIM" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_PHP_SLIM"
  scope           = "environment"
}
