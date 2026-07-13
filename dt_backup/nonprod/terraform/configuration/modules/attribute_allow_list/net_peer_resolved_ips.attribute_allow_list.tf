resource "dynatrace_attribute_allow_list" "net_peer_resolved_ips" {
  enabled = true
  key     = "net.peer.resolved.ips"
}
