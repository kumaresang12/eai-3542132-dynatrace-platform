resource "dynatrace_attribute_allow_list" "process_executable_path" {
  enabled = true
  key     = "process.executable.path"
}
