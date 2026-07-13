resource "dynatrace_attribute_allow_list" "k8s_replicaset_uid" {
  enabled = true
  key     = "k8s.replicaset.uid"
}
