resource "dynatrace_attribute_allow_list" "span_status_code" {
  enabled = true
  key     = "span.status_code"
}
