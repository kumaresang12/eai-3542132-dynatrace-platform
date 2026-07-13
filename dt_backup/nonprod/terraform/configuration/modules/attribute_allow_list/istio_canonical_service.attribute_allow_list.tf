resource "dynatrace_attribute_allow_list" "istio_canonical_service" {
  enabled = true
  key     = "istio.canonical_service"
}
