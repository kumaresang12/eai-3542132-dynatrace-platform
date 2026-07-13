resource "dynatrace_attribute_allow_list" "thread_name" {
  enabled = true
  key     = "thread.name"
}
