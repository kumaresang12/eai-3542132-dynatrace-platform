resource "dynatrace_attribute_allow_list" "network_protocol_name" {
  enabled = true
  key     = "network.protocol.name"
}
