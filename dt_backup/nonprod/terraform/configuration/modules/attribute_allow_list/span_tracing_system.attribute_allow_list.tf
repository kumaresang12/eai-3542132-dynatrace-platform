resource "dynatrace_attribute_allow_list" "span_tracing_system" {
  enabled = true
  key     = "span.tracing.system"
}
