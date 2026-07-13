resource "dynatrace_oneagent_features" "SENSOR_PYTHON_HTTPX" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_HTTPX"
  scope             = "environment"
}
