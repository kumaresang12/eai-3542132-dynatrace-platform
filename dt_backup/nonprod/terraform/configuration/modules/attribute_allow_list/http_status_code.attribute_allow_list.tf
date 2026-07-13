resource "dynatrace_attribute_allow_list" "http_status_code" {
  enabled = true
  key     = "http.status_code"
}
