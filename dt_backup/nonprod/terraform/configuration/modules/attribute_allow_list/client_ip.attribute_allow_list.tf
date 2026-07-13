resource "dynatrace_attribute_allow_list" "client_ip" {
  enabled = true
  key     = "client.ip"
}
