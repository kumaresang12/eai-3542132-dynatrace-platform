resource "dynatrace_oneagent_features" "SENSOR_PYTHON_HAYSTACK" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_HAYSTACK"
  scope             = "environment"
}
