resource "dynatrace_oneagent_features" "SENSOR_PYTHON_KAFKA_CONFLUENT_PRODUCER" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_KAFKA_CONFLUENT_PRODUCER"
  scope             = "environment"
}
