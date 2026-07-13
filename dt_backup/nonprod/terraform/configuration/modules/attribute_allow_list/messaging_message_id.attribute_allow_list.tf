resource "dynatrace_attribute_allow_list" "messaging_message_id" {
  enabled = true
  key     = "messaging.message.id"
}
