resource "dynatrace_attribute_allow_list" "k8s_daemonset_uid" {
  enabled = true
  key     = "k8s.daemonset.uid"
}
