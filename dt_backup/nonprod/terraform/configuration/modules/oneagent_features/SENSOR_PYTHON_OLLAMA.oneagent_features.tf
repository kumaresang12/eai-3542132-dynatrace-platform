resource "dynatrace_oneagent_features" "SENSOR_PYTHON_OLLAMA" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_OLLAMA"
  scope             = "environment"
}
