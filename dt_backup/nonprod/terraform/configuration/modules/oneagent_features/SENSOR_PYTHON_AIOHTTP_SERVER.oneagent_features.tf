resource "dynatrace_oneagent_features" "SENSOR_PYTHON_AIOHTTP_SERVER" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_AIOHTTP_SERVER"
  scope             = "environment"
}
