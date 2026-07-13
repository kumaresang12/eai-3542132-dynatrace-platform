resource "dynatrace_attribute_allow_list" "exception_escaped" {
  enabled = true
  key     = "exception.escaped"
}
