resource "dynatrace_attribute_allow_list" "faas_execution" {
  enabled = true
  key     = "faas.execution"
}
