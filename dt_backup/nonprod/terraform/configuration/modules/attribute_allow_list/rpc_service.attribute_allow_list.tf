resource "dynatrace_attribute_allow_list" "rpc_service" {
  enabled = true
  key     = "rpc.service"
}
