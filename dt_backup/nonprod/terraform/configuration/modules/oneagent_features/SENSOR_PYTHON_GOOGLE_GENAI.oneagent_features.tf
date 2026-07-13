resource "dynatrace_oneagent_features" "SENSOR_PYTHON_GOOGLE_GENAI" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_GOOGLE_GENAI"
  scope             = "environment"
}
