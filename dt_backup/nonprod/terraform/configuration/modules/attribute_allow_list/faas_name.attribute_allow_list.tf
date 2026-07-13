resource "dynatrace_attribute_allow_list" "faas_name" {
  enabled = true
  key     = "faas.name"
}
