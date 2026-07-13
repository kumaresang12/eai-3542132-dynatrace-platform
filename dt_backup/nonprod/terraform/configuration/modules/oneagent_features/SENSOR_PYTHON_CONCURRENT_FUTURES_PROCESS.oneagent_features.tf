resource "dynatrace_oneagent_features" "SENSOR_PYTHON_CONCURRENT_FUTURES_PROCESS" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_CONCURRENT_FUTURES_PROCESS"
  scope             = "environment"
}
