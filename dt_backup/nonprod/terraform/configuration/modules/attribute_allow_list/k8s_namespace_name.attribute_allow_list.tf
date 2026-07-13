resource "dynatrace_attribute_allow_list" "k8s_namespace_name" {
  enabled = true
  key     = "k8s.namespace.name"
}
