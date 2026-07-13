resource "dynatrace_attribute_masking" "process_command_args" {
  enabled = true
  key     = "process.command_args"
  masking = "MASK_ENTIRE_VALUE"
}
