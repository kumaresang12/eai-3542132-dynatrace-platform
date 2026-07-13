resource "dynatrace_attribute_allow_list" "http_host" {
  enabled = true
  key     = "http.host"
}
