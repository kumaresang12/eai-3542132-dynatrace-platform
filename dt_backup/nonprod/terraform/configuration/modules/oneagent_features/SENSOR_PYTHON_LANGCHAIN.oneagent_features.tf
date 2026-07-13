resource "dynatrace_oneagent_features" "SENSOR_PYTHON_LANGCHAIN" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_LANGCHAIN"
  scope             = "environment"
}
