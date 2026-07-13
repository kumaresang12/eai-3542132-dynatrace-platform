resource "dynatrace_attribute_allow_list" "net_peer_port" {
  enabled = true
  key     = "net.peer.port"
}
