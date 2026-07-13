resource "dynatrace_attribute_allow_list" "http_response_status_code" {
  enabled = true
  key     = "http.response.status_code"
}
