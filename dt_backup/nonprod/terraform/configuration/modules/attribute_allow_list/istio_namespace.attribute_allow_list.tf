resource "dynatrace_attribute_allow_list" "istio_namespace" {
  enabled = true
  key     = "istio.namespace"
}
