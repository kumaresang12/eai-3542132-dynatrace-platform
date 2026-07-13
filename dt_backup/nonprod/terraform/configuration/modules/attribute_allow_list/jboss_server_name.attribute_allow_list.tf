resource "dynatrace_attribute_allow_list" "jboss_server_name" {
  enabled = true
  key     = "jboss.server.name"
}
