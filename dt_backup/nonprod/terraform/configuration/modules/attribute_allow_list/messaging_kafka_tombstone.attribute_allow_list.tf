resource "dynatrace_attribute_allow_list" "messaging_kafka_tombstone" {
  enabled = true
  key     = "messaging.kafka.tombstone"
}
