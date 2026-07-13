resource "dynatrace_oneagent_features" "SENSOR_PHP_RABBITMQ" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_PHP_RABBITMQ"
  scope           = "environment"
}
