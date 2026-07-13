resource "dynatrace_attribute_allow_list" "faas_invoked_region" {
  enabled = true
  key     = "faas.invoked_region"
}
