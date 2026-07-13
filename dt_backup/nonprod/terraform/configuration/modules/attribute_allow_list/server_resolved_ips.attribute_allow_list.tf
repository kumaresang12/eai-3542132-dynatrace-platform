resource "dynatrace_attribute_allow_list" "server_resolved_ips" {
  enabled = true
  key     = "server.resolved_ips"
}
