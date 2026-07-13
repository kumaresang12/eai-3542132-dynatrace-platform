resource "dynatrace_attribute_allow_list" "http_request_body_size" {
  enabled = true
  key     = "http.request.body.size"
}
