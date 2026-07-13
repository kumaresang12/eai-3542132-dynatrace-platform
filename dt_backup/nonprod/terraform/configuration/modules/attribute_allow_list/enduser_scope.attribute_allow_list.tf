resource "dynatrace_attribute_allow_list" "enduser_scope" {
  enabled = true
  key     = "enduser.scope"
}
