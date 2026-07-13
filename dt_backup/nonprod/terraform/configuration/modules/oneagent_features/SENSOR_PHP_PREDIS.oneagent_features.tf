resource "dynatrace_oneagent_features" "SENSOR_PHP_PREDIS" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_PHP_PREDIS"
  scope           = "environment"
}
