resource "dynatrace_attribute_allow_list" "k8s_container_restart_count" {
  enabled = true
  key     = "k8s.container.restart_count"
}
