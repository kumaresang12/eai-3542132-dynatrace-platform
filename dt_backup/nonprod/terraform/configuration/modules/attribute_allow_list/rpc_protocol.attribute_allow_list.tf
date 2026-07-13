resource "dynatrace_attribute_allow_list" "rpc_protocol" {
  enabled = true
  key     = "rpc.protocol"
}
