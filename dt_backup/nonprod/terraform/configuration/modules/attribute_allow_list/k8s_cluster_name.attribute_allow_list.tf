resource "dynatrace_attribute_allow_list" "k8s_cluster_name" {
  enabled = true
  key     = "k8s.cluster.name"
}
