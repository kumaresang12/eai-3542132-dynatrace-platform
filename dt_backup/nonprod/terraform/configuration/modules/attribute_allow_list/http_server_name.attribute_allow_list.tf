resource "dynatrace_attribute_allow_list" "http_server_name" {
  enabled = true
  key     = "http.server_name"
}
