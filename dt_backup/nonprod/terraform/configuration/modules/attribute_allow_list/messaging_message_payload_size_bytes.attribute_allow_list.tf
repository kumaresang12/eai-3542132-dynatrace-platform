resource "dynatrace_attribute_allow_list" "messaging_message_payload_size_bytes" {
  enabled = true
  key     = "messaging.message.payload_size_bytes"
}
