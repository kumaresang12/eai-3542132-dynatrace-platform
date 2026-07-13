resource "dynatrace_attribute_allow_list" "aggregation_duration_samples" {
  enabled = true
  key     = "aggregation.duration_samples"
}
