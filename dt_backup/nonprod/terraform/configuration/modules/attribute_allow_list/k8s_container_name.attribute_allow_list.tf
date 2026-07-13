resource "dynatrace_attribute_allow_list" "k8s_container_name" {
  enabled = true
  key     = "k8s.container.name"
}
