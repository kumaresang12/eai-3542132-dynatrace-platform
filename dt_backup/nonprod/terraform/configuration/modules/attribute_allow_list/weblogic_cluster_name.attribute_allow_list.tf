resource "dynatrace_attribute_allow_list" "weblogic_cluster_name" {
  enabled = true
  key     = "weblogic.cluster.name"
}
