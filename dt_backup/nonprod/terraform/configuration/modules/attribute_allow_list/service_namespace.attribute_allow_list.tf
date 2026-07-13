resource "dynatrace_attribute_allow_list" "service_namespace" {
  enabled = true
  key     = "service.namespace"
}
