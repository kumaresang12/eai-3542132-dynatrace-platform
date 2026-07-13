resource "dynatrace_attribute_allow_list" "process_command" {
  enabled = true
  key     = "process.command"
}
