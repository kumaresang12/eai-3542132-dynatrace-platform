resource "dynatrace_attribute_allow_list" "container_name" {
  enabled = true
  key     = "container.name"
}
