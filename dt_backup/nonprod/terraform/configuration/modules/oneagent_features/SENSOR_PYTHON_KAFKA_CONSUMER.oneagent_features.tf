resource "dynatrace_oneagent_features" "SENSOR_PYTHON_KAFKA_CONSUMER" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_KAFKA_CONSUMER"
  scope             = "environment"
}
