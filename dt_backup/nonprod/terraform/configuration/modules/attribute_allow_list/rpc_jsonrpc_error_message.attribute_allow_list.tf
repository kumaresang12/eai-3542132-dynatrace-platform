resource "dynatrace_attribute_allow_list" "rpc_jsonrpc_error_message" {
  enabled = true
  key     = "rpc.jsonrpc.error_message"
}
