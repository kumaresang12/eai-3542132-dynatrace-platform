resource "dynatrace_attribute_allow_list" "messaging_source_temporary" {
  enabled = true
  key     = "messaging.source.temporary"
}
