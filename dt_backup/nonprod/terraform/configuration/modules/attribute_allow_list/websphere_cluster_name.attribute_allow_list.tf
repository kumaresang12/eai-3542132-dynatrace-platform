resource "dynatrace_attribute_allow_list" "websphere_cluster_name" {
  enabled = true
  key     = "websphere.cluster.name"
}
