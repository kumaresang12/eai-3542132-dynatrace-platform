resource "dynatrace_oneagent_features" "SENSOR_PYTHON_DJANGO" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_DJANGO"
  scope             = "environment"
}
