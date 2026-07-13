resource "dynatrace_oneagent_features" "SENSOR_PHP_JOOMLA" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_PHP_JOOMLA"
  scope           = "environment"
}
