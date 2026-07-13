resource "dynatrace_oneagent_features" "SENSOR_PHP_WORDPRESS" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_PHP_WORDPRESS"
  scope           = "environment"
}
