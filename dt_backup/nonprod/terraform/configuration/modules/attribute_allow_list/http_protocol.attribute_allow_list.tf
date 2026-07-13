resource "dynatrace_attribute_allow_list" "http_protocol" {
  enabled = true
  key     = "http.protocol"
}
