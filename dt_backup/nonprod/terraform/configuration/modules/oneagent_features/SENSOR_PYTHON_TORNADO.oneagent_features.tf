resource "dynatrace_oneagent_features" "SENSOR_PYTHON_TORNADO" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_TORNADO"
  scope             = "environment"
}
