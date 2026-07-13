resource "dynatrace_attribute_allow_list" "messaging_akka_message_type" {
  enabled = true
  key     = "messaging.akka.message.type"
}
