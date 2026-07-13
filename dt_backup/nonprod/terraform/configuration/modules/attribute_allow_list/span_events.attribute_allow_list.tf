resource "dynatrace_attribute_allow_list" "span_events" {
  enabled = true
  key     = "span.events"
}
