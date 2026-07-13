resource "dynatrace_oneagent_features" "SENSOR_PYTHON_PYMONGO" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_PYMONGO"
  scope             = "environment"
}
