resource "dynatrace_oneagent_features" "SENSOR_PYTHON_STARLETTE" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_STARLETTE"
  scope             = "environment"
}
