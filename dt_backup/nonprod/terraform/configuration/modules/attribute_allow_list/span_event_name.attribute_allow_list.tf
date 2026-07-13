resource "dynatrace_attribute_allow_list" "span_event_name" {
  enabled = true
  key     = "span_event.name"
}
