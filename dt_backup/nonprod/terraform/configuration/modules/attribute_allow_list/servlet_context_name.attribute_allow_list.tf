resource "dynatrace_attribute_allow_list" "servlet_context_name" {
  enabled = true
  key     = "servlet.context.name"
}
