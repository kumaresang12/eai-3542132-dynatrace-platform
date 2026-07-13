resource "dynatrace_attribute_allow_list" "span_status_message" {
  enabled = true
  key     = "span.status.message"
}
