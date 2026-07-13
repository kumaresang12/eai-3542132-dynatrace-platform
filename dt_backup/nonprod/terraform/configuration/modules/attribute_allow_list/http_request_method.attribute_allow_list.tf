resource "dynatrace_attribute_allow_list" "http_request_method" {
  enabled = true
  key     = "http.request.method"
}
