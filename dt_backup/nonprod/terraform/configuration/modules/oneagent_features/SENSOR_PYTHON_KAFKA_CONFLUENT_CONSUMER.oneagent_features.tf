resource "dynatrace_oneagent_features" "SENSOR_PYTHON_KAFKA_CONFLUENT_CONSUMER" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_KAFKA_CONFLUENT_CONSUMER"
  scope             = "environment"
}
