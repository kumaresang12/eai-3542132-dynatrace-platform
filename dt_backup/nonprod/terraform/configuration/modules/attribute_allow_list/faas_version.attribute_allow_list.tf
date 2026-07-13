resource "dynatrace_attribute_allow_list" "faas_version" {
  enabled = true
  key     = "faas.version"
}
