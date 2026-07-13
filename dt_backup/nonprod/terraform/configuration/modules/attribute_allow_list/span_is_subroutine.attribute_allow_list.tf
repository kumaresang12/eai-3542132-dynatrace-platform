resource "dynatrace_attribute_allow_list" "span_is_subroutine" {
  enabled = true
  key     = "span.is_subroutine"
}
