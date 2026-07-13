resource "dynatrace_oneagent_features" "SENSOR_GO_KAFKA_CONFLUENT_CONSUMER_FORCIBLE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_GO_KAFKA_CONFLUENT_CONSUMER_FORCIBLE"
  scope           = "environment"
}
