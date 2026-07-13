resource "dynatrace_attribute_allow_list" "rpc_jsonrpc_request_id" {
  enabled = true
  key     = "rpc.jsonrpc.request_id"
}
