resource "dynatrace_attribute_allow_list" "istio_mesh_id" {
  enabled = true
  key     = "istio.mesh_id"
}
