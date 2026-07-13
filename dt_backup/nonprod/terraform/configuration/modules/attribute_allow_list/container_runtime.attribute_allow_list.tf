resource "dynatrace_attribute_allow_list" "container_runtime" {
  enabled = true
  key     = "container.runtime"
}
