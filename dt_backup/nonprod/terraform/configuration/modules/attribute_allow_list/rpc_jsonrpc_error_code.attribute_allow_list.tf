resource "dynatrace_attribute_allow_list" "rpc_jsonrpc_error_code" {
  enabled = true
  key     = "rpc.jsonrpc.error_code"
}
