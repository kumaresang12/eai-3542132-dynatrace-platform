resource "dynatrace_attribute_allow_list" "net_sock_host_addr" {
  enabled = true
  key     = "net.sock.host.addr"
}
