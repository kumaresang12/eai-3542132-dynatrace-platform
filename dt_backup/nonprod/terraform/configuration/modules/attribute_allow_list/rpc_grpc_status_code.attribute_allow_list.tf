resource "dynatrace_attribute_allow_list" "rpc_grpc_status_code" {
  enabled = true
  key     = "rpc.grpc.status_code"
}
