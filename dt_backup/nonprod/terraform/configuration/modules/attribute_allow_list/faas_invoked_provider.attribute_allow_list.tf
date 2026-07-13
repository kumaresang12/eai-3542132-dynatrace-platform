resource "dynatrace_attribute_allow_list" "faas_invoked_provider" {
  enabled = true
  key     = "faas.invoked_provider"
}
