resource "dynatrace_attribute_allow_list" "code_namespace" {
  enabled = true
  key     = "code.namespace"
}
