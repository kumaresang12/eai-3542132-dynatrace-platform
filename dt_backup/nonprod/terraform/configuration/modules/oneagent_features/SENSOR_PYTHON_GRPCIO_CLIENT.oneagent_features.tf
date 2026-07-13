resource "dynatrace_oneagent_features" "SENSOR_PYTHON_GRPCIO_CLIENT" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_GRPCIO_CLIENT"
  scope             = "environment"
}
