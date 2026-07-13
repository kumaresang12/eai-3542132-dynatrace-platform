resource "dynatrace_attribute_allow_list" "process_command_args" {
  enabled = true
  key     = "process.command_args"
}
