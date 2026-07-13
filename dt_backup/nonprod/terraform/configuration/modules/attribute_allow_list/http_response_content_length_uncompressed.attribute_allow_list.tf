resource "dynatrace_attribute_allow_list" "http_response_content_length_uncompressed" {
  enabled = true
  key     = "http.response_content_length_uncompressed"
}
