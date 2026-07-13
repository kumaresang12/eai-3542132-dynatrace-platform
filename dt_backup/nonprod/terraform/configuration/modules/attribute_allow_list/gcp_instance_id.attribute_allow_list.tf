resource "dynatrace_attribute_allow_list" "gcp_instance_id" {
  enabled = true
  key     = "gcp.instance.id"
}
