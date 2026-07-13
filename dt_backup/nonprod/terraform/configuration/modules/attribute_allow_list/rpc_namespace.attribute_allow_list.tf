resource "dynatrace_attribute_allow_list" "rpc_namespace" {
  enabled = true
  key     = "rpc.namespace"
}
