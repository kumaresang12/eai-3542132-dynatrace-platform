resource "dynatrace_oneagent_features" "SENSOR_PYTHON_KAFKA_PRODUCER" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_KAFKA_PRODUCER"
  scope             = "environment"
}
