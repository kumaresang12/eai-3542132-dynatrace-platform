resource "dynatrace_oneagent_features" "SENSOR_PYTHON_FLASK" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_FLASK"
  scope             = "environment"
}
