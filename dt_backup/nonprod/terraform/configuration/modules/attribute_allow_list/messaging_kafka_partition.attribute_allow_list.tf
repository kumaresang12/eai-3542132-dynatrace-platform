resource "dynatrace_attribute_allow_list" "messaging_kafka_partition" {
  enabled = true
  key     = "messaging.kafka.partition"
}
