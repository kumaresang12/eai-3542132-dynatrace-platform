resource "dynatrace_oneagent_features" "SENSOR_PHP_LARAVEL" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_PHP_LARAVEL"
  scope           = "environment"
}
