resource "dynatrace_attribute_allow_list" "messaging_kafka_consumer_group" {
  enabled = true
  key     = "messaging.kafka.consumer_group"
}
