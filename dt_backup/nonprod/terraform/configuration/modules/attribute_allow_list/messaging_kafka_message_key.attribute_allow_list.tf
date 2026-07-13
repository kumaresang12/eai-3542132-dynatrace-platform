resource "dynatrace_attribute_allow_list" "messaging_kafka_message_key" {
  enabled = true
  key     = "messaging.kafka.message_key"
}
