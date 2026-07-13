resource "dynatrace_oneagent_features" "SENSOR_PYTHON_SANIC" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_SANIC"
  scope             = "environment"
}
