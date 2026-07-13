resource "dynatrace_oneagent_features" "SENSOR_PYTHON_CONCURRENT_FUTURES_THREAD" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_CONCURRENT_FUTURES_THREAD"
  scope             = "environment"
}
