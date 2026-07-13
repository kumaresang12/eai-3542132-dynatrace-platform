resource "dynatrace_attribute_allow_list" "faas_invoked_name" {
  enabled = true
  key     = "faas.invoked_name"
}
