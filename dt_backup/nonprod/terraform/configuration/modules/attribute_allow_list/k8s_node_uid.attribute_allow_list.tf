resource "dynatrace_attribute_allow_list" "k8s_node_uid" {
  enabled = true
  key     = "k8s.node.uid"
}
