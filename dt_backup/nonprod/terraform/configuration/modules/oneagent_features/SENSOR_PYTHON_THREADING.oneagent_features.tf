resource "dynatrace_oneagent_features" "SENSOR_PYTHON_THREADING" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_THREADING"
  scope             = "environment"
}
