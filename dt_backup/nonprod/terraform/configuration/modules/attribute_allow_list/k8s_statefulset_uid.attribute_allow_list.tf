resource "dynatrace_attribute_allow_list" "k8s_statefulset_uid" {
  enabled = true
  key     = "k8s.statefulset.uid"
}
