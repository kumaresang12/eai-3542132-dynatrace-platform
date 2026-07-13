resource "dynatrace_attribute_allow_list" "http_method" {
  enabled = true
  key     = "http.method"
}
