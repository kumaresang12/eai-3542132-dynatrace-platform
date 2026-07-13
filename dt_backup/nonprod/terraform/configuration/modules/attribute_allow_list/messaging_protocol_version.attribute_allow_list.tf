resource "dynatrace_attribute_allow_list" "messaging_protocol_version" {
  enabled = true
  key     = "messaging.protocol_version"
}
