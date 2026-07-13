resource "dynatrace_attribute_allow_list" "websphere_liberty_server_name" {
  enabled = true
  key     = "websphere_liberty.server.name"
}
