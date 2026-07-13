resource "dynatrace_oneagent_features" "SENSOR_PYTHON_QUEUE" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_QUEUE"
  scope             = "environment"
}
