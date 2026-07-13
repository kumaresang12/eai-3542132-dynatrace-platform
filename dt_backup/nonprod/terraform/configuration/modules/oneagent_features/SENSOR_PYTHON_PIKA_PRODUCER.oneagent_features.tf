resource "dynatrace_oneagent_features" "SENSOR_PYTHON_PIKA_PRODUCER" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_PIKA_PRODUCER"
  scope             = "environment"
}
