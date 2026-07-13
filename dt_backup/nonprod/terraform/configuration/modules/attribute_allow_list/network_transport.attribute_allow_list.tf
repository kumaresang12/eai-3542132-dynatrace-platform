resource "dynatrace_attribute_allow_list" "network_transport" {
  enabled = true
  key     = "network.transport"
}
