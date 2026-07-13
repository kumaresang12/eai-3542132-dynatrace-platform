resource "dynatrace_attribute_allow_list" "messaging_rabbitmq_routing_key" {
  enabled = true
  key     = "messaging.rabbitmq.routing_key"
}
