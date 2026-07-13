resource "dynatrace_attribute_allow_list" "compilation_timings_top_compilations" {
  enabled = true
  key     = "compilation_timings.top_compilations"
}
