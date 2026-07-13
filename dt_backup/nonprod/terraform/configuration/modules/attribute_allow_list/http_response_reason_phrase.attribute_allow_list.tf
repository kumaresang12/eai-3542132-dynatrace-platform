resource "dynatrace_attribute_allow_list" "http_response_reason_phrase" {
  enabled = true
  key     = "http.response.reason_phrase"
}
