resource "dynatrace_attribute_allow_list" "messaging_message_payload_compressed_size_bytes" {
  enabled = true
  key     = "messaging.message_payload_compressed_size_bytes"
}
