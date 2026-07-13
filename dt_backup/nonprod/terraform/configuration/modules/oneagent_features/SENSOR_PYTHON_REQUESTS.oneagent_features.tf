resource "dynatrace_oneagent_features" "SENSOR_PYTHON_REQUESTS" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_REQUESTS"
  scope             = "environment"
}
