resource "dynatrace_attribute_allow_list" "cassandra_cluster_name" {
  enabled = true
  key     = "cassandra.cluster.name"
}
