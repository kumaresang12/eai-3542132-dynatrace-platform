resource "dynatrace_attribute_allow_list" "cloudfoundry_space_id" {
  enabled = true
  key     = "cloudfoundry.space.id"
}
