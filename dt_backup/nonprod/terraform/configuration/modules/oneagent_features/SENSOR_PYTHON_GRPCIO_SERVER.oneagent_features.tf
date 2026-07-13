resource "dynatrace_oneagent_features" "SENSOR_PYTHON_GRPCIO_SERVER" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_GRPCIO_SERVER"
  scope             = "environment"
}
