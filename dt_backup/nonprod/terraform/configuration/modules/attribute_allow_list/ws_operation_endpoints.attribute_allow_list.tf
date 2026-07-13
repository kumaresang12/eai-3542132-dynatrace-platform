resource "dynatrace_attribute_allow_list" "ws_operation_endpoints" {
  enabled = true
  key     = "ws.operation.endpoints"
}
