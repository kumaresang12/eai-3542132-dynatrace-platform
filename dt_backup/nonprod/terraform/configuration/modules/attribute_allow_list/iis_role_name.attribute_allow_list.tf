resource "dynatrace_attribute_allow_list" "iis_role_name" {
  enabled = true
  key     = "iis.role.name"
}
