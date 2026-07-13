resource "dynatrace_oneagent_features" "SENSOR_PYTHON_REDIS" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_REDIS"
  scope             = "environment"
}
