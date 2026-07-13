resource "dynatrace_oneagent_features" "SENSOR_PHP_GRPC" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_PHP_GRPC"
  scope           = "environment"
}
