resource "dynatrace_attribute_allow_list" "net_sock_peer_name" {
  enabled = true
  key     = "net.sock.peer.name"
}
