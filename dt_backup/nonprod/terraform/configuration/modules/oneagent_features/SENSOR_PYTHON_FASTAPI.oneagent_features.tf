resource "dynatrace_oneagent_features" "SENSOR_PYTHON_FASTAPI" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_FASTAPI"
  scope             = "environment"
}
