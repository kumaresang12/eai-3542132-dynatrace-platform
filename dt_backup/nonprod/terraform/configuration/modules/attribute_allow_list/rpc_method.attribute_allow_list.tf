resource "dynatrace_attribute_allow_list" "rpc_method" {
  enabled = true
  key     = "rpc.method"
}
