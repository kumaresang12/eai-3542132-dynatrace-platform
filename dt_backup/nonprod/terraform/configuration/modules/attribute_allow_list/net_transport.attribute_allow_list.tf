resource "dynatrace_attribute_allow_list" "net_transport" {
  enabled = true
  key     = "net.transport"
}
