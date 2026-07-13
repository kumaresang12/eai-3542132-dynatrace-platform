resource "dynatrace_attribute_allow_list" "messaging_protocol" {
  enabled = true
  key     = "messaging.protocol"
}
