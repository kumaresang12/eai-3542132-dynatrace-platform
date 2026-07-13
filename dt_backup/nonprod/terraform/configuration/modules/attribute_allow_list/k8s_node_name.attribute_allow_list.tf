resource "dynatrace_attribute_allow_list" "k8s_node_name" {
  enabled = true
  key     = "k8s.node.name"
}
