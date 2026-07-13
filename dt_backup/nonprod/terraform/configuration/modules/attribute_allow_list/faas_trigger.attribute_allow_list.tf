resource "dynatrace_attribute_allow_list" "faas_trigger" {
  enabled = true
  key     = "faas.trigger"
}
