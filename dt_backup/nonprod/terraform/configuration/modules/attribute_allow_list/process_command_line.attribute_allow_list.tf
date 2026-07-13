resource "dynatrace_attribute_allow_list" "process_command_line" {
  enabled = true
  key     = "process.command_line"
}
