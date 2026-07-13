resource "dynatrace_attribute_allow_list" "code_invoked_filepath" {
  enabled = true
  key     = "code.invoked.filepath"
}
