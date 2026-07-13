resource "dynatrace_attribute_allow_list" "cloud_provider" {
  enabled = true
  key     = "cloud.provider"
}
