resource "dynatrace_attribute_allow_list" "code_invoked_namespace" {
  enabled = true
  key     = "code.invoked.namespace"
}
