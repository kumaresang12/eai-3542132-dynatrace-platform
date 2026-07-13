resource "dynatrace_oneagent_features" "SENSOR_GO_KAFKA_SARAMA_PRODUCER_FORCIBLE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_GO_KAFKA_SARAMA_PRODUCER_FORCIBLE"
  scope           = "environment"
}
