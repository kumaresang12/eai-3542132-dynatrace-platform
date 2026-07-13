resource "dynatrace_attribute_allow_list" "aggregation_duration_sum" {
  enabled = true
  key     = "aggregation.duration_sum"
}
