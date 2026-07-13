resource "dynatrace_attribute_allow_list" "messaging_source_name" {
  enabled = true
  key     = "messaging.source.name"
}
