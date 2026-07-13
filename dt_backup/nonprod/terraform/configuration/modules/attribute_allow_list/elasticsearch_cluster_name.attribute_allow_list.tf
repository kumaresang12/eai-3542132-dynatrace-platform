resource "dynatrace_attribute_allow_list" "elasticsearch_cluster_name" {
  enabled = true
  key     = "elasticsearch.cluster.name"
}
