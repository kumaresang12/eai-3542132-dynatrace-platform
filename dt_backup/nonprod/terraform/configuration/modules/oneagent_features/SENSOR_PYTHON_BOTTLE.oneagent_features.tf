resource "dynatrace_oneagent_features" "SENSOR_PYTHON_BOTTLE" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_BOTTLE"
  scope             = "environment"
}
