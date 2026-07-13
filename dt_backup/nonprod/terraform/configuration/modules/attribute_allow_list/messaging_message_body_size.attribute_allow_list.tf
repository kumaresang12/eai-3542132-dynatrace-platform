resource "dynatrace_attribute_allow_list" "messaging_message_body_size" {
  enabled = true
  key     = "messaging.message.body.size"
}
