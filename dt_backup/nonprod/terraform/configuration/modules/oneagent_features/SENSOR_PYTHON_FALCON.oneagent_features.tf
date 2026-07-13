resource "dynatrace_oneagent_features" "SENSOR_PYTHON_FALCON" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_FALCON"
  scope             = "environment"
}
