resource "dynatrace_attribute_allow_list" "service_version" {
  enabled = true
  key     = "service.version"
}
