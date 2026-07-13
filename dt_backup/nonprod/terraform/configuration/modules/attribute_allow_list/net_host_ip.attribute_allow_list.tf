resource "dynatrace_attribute_allow_list" "net_host_ip" {
  enabled = true
  key     = "net.host.ip"
}
