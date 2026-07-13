resource "dynatrace_oneagent_features" "SENSOR_PYTHON_MISTRALAI" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_MISTRALAI"
  scope             = "environment"
}
