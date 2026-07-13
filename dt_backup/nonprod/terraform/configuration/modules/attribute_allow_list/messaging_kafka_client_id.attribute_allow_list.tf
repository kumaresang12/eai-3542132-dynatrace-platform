resource "dynatrace_attribute_allow_list" "messaging_kafka_client_id" {
  enabled = true
  key     = "messaging.kafka.client_id"
}
