resource "dynatrace_attribute_allow_list" "servlet_context_path" {
  enabled = true
  key     = "servlet.context.path"
}
