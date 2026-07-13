resource "dynatrace_attribute_allow_list" "cloudfoundry_application_name" {
  enabled = true
  key     = "cloudfoundry.application.name"
}
