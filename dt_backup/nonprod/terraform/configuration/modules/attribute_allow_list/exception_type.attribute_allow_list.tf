resource "dynatrace_attribute_allow_list" "exception_type" {
  enabled = true
  key     = "exception.type"
}
