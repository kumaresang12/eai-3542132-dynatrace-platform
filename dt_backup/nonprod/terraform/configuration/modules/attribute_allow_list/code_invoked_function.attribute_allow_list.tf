resource "dynatrace_attribute_allow_list" "code_invoked_function" {
  enabled = true
  key     = "code.invoked.function"
}
