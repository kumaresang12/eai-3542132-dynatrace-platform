resource "dynatrace_attribute_allow_list" "messaging_temp_destination" {
  enabled = true
  key     = "messaging.temp_destination"
}
