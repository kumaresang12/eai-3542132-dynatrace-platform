resource "dynatrace_oneagent_features" "SENSOR_PYTHON_PIKA_CONSUMER" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_PIKA_CONSUMER"
  scope             = "environment"
}
