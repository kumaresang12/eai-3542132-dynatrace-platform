resource "dynatrace_attribute_allow_list" "custom_service_name" {
  enabled = true
  key     = "custom_service.name"
}
