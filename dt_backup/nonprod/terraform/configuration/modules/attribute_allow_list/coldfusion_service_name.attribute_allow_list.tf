resource "dynatrace_attribute_allow_list" "coldfusion_service_name" {
  enabled = true
  key     = "coldfusion.service.name"
}
