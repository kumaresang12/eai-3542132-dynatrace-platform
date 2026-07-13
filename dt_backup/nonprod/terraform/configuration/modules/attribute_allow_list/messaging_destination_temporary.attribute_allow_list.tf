resource "dynatrace_attribute_allow_list" "messaging_destination_temporary" {
  enabled = true
  key     = "messaging.destination.temporary"
}
