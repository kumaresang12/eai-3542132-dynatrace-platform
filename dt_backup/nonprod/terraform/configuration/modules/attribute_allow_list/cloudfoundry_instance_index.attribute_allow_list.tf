resource "dynatrace_attribute_allow_list" "cloudfoundry_instance_index" {
  enabled = true
  key     = "cloudfoundry.instance.index"
}
