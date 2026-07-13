resource "dynatrace_attribute_allow_list" "faas_coldstart" {
  enabled = true
  key     = "faas.coldstart"
}
