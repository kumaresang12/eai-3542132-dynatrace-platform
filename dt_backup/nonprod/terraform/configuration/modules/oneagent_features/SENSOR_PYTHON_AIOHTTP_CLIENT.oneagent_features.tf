resource "dynatrace_oneagent_features" "SENSOR_PYTHON_AIOHTTP_CLIENT" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_AIOHTTP_CLIENT"
  scope             = "environment"
}
