resource "dynatrace_attribute_allow_list" "http_response_body_size" {
  enabled = true
  key     = "http.response.body.size"
}
