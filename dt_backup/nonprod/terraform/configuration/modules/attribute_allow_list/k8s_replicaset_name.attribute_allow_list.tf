resource "dynatrace_attribute_allow_list" "k8s_replicaset_name" {
  enabled = true
  key     = "k8s.replicaset.name"
}
