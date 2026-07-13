resource "dynatrace_oneagent_features" "SENSOR_PHP_DRUPAL" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_PHP_DRUPAL"
  scope           = "environment"
}
