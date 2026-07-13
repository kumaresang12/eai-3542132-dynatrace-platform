resource "dynatrace_attribute_allow_list" "rpc_jsonrpc_method" {
  enabled = true
  key     = "rpc.jsonrpc.method"
}
