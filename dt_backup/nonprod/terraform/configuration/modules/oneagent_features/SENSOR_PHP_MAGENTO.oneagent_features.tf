resource "dynatrace_oneagent_features" "SENSOR_PHP_MAGENTO" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_PHP_MAGENTO"
  scope           = "environment"
}
