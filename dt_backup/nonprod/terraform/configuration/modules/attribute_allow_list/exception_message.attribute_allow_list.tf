resource "dynatrace_attribute_allow_list" "exception_message" {
  enabled = true
  key     = "exception.message"
}
