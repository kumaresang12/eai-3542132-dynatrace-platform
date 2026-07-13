resource "dynatrace_attribute_allow_list" "aggregation_exception_count" {
  enabled = true
  key     = "aggregation.exception_count"
}
