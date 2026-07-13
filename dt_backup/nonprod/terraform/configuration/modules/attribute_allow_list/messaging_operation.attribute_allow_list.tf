resource "dynatrace_attribute_allow_list" "messaging_operation" {
  enabled = true
  key     = "messaging.operation"
}
