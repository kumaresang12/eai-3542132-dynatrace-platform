resource "dynatrace_attribute_allow_list" "peer_service" {
  enabled = true
  key     = "peer.service"
}
