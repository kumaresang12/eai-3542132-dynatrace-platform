resource "dynatrace_attribute_allow_list" "sampling_threshold" {
  enabled = true
  key     = "sampling.threshold"
}
