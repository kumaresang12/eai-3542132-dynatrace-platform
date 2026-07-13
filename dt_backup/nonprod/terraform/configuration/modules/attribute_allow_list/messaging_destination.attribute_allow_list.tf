resource "dynatrace_attribute_allow_list" "messaging_destination" {
  enabled = true
  key     = "messaging.destination"
}
