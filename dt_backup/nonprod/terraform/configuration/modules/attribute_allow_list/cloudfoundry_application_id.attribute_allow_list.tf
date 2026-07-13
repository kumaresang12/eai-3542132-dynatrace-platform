resource "dynatrace_attribute_allow_list" "cloudfoundry_application_id" {
  enabled = true
  key     = "cloudfoundry.application.id"
}
