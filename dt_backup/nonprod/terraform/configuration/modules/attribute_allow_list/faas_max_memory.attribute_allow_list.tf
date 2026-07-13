resource "dynatrace_attribute_allow_list" "faas_max_memory" {
  enabled = true
  key     = "faas.max_memory"
}
