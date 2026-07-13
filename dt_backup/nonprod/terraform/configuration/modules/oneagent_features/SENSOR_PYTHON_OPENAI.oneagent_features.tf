resource "dynatrace_oneagent_features" "SENSOR_PYTHON_OPENAI" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_OPENAI"
  scope             = "environment"
}
