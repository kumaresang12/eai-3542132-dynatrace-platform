resource "dynatrace_attribute_allow_list" "server_port" {
  enabled = true
  key     = "server.port"
}
