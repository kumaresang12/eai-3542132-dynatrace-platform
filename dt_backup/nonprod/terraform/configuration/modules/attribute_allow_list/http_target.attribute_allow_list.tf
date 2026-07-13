resource "dynatrace_attribute_allow_list" "http_target" {
  enabled = true
  key     = "http.target"
}
