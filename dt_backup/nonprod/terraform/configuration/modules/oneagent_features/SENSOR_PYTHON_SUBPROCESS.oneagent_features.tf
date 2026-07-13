resource "dynatrace_oneagent_features" "SENSOR_PYTHON_SUBPROCESS" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_SUBPROCESS"
  scope             = "environment"
}
