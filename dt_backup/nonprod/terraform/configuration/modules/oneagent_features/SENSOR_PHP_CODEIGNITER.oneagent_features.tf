resource "dynatrace_oneagent_features" "SENSOR_PHP_CODEIGNITER" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_PHP_CODEIGNITER"
  scope           = "environment"
}
