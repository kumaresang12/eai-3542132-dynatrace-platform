resource "dynatrace_attribute_allow_list" "k8s_daemonset_name" {
  enabled = true
  key     = "k8s.daemonset.name"
}
