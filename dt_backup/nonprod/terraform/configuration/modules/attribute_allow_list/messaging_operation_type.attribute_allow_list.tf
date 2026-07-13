resource "dynatrace_attribute_allow_list" "messaging_operation_type" {
  enabled = true
  key     = "messaging.operation.type"
}
