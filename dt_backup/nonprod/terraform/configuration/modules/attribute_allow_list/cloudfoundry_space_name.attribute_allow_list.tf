resource "dynatrace_attribute_allow_list" "cloudfoundry_space_name" {
  enabled = true
  key     = "cloudfoundry.space.name"
}
