resource "dynatrace_attribute_allow_list" "elasticsearch_node_name" {
  enabled = true
  key     = "elasticsearch.node.name"
}
