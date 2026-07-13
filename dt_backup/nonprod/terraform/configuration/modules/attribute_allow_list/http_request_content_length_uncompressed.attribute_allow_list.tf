resource "dynatrace_attribute_allow_list" "http_request_content_length_uncompressed" {
  enabled = true
  key     = "http.request_content_length_uncompressed"
}
