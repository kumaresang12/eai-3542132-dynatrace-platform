resource "dynatrace_attribute_allow_list" "http_scheme" {
  enabled = true
  key     = "http.scheme"
}
