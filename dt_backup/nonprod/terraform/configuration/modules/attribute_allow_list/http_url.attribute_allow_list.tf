resource "dynatrace_attribute_allow_list" "http_url" {
  enabled = true
  key     = "http.url"
}
