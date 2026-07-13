resource "dynatrace_attribute_allow_list" "process_runtime_version" {
  enabled = true
  key     = "process.runtime.version"
}
