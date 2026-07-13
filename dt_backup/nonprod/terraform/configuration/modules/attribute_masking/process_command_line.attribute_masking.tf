resource "dynatrace_attribute_masking" "process_command_line" {
  enabled = true
  key     = "process.command_line"
  masking = "MASK_ENTIRE_VALUE"
}
