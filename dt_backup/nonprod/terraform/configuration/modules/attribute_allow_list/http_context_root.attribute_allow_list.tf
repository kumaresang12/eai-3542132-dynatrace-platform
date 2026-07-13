resource "dynatrace_attribute_allow_list" "http_context_root" {
  enabled = true
  key     = "http.context_root"
}
