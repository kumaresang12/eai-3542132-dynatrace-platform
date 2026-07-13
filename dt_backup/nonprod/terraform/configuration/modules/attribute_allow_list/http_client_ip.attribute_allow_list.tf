resource "dynatrace_attribute_allow_list" "http_client_ip" {
  enabled = true
  key     = "http.client_ip"
}
