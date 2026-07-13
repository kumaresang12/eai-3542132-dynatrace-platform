resource "dynatrace_attribute_allow_list" "net_peer_name" {
  enabled = true
  key     = "net.peer.name"
}
