resource "dynatrace_attribute_allow_list" "compilation_timings_duration_sum" {
  enabled = true
  key     = "compilation_timings.duration_sum"
}
