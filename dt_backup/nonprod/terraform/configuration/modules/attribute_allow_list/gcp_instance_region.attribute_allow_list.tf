resource "dynatrace_attribute_allow_list" "gcp_instance_region" {
  enabled = true
  key     = "gcp.instance.region"
}
