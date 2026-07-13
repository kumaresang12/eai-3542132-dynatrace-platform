resource "dynatrace_attribute_allow_list" "process_runtime_name" {
  enabled = true
  key     = "process.runtime.name"
}
