resource "dynatrace_attribute_allow_list" "exception_stacktrace" {
  enabled = true
  key     = "exception.stacktrace"
}
