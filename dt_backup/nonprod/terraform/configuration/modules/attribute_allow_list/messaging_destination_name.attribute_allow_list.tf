resource "dynatrace_attribute_allow_list" "messaging_destination_name" {
  enabled = true
  key     = "messaging.destination.name"
}
