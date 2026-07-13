resource "dynatrace_process_monitoring_rule" "environment_EXE_NAME_EQUALS_rep" {
  enabled       = true
  host_group_id = "environment"
  insert_after  = "vu9U3hXa3q0AAAABAC5idWlsdGluOnByb2Nlc3MuY3VzdG9tLXByb2Nlc3MtbW9uaXRvcmluZy1ydWxlAAZ0ZW5hbnQABnRlbmFudAAkZDAxMzNlYTUtZDZjZi0zMTNhLThiZmEtZWEzODYxY2VhNTlhvu9U3hXa3q0"
  mode          = "MONITORING_OFF"
  condition {
    item     = "EXE_NAME"
    operator = "EQUALS"
    value    = "rep"
  }
}
