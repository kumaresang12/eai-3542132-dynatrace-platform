resource "dynatrace_attribute_allow_list" "process_executable_name" {
  enabled = true
  key     = "process.executable.name"
}
