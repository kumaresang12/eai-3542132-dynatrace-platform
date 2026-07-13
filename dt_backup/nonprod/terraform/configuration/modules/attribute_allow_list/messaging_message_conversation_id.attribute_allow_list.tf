resource "dynatrace_attribute_allow_list" "messaging_message_conversation_id" {
  enabled = true
  key     = "messaging.message.conversation_id"
}
