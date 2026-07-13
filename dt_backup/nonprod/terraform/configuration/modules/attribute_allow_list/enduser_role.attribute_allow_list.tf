resource "dynatrace_attribute_allow_list" "enduser_role" {
  enabled = true
  key     = "enduser.role"
}
