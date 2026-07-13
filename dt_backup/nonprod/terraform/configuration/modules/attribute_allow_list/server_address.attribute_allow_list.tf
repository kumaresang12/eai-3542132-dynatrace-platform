resource "dynatrace_attribute_allow_list" "server_address" {
  enabled = true
  key     = "server.address"
}
