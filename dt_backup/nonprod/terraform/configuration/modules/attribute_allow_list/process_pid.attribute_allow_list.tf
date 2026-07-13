resource "dynatrace_attribute_allow_list" "process_pid" {
  enabled = true
  key     = "process.pid"
}
