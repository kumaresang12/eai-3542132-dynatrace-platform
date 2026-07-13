resource "dynatrace_process_monitoring_rule" "environment_EXE_NAME_EQUALS_dbus-daemon" {
  enabled       = true
  host_group_id = "environment"
  insert_after  = "vu9U3hXa3q0AAAABAC5idWlsdGluOnByb2Nlc3MuY3VzdG9tLXByb2Nlc3MtbW9uaXRvcmluZy1ydWxlAAZ0ZW5hbnQABnRlbmFudAAkOWY0MGU4YWMtZjMwNy0zNWQ3LWI2MTUtZTlhMTA2NTcwMzBjvu9U3hXa3q0"
  mode          = "MONITORING_OFF"
  condition {
    item     = "EXE_NAME"
    operator = "EQUALS"
    value    = "dbus-daemon"
  }
}
