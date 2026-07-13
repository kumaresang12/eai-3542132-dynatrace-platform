resource "dynatrace_attribute_allow_list" "faas_instance" {
  enabled = true
  key     = "faas.instance"
}
