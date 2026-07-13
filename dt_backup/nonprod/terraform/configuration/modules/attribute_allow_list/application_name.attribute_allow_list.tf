resource "dynatrace_attribute_allow_list" "application_name" {
  enabled = true
  key     = "application.name"
}
