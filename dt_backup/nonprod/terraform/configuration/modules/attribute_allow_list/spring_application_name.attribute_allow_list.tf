resource "dynatrace_attribute_allow_list" "spring_application_name" {
  enabled = true
  key     = "spring.application.name"
}
