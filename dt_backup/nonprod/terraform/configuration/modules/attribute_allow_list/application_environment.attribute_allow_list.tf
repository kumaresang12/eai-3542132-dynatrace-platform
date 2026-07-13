resource "dynatrace_attribute_allow_list" "application_environment" {
  enabled = true
  key     = "application.environment"
}
