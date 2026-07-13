resource "dynatrace_process_monitoring_rule" "environment_COMMAND_LINE_ARGS_CONTAINS_bosh-agent" {
  enabled       = true
  host_group_id = "environment"
  insert_after  = "vu9U3hXa3q0AAAABAC5idWlsdGluOnByb2Nlc3MuY3VzdG9tLXByb2Nlc3MtbW9uaXRvcmluZy1ydWxlAAZ0ZW5hbnQABnRlbmFudAAkMDI5MGE4NTgtNjUzMi0zNGVkLTllNmItZjcwODM1MGJjZGRivu9U3hXa3q0"
  mode          = "MONITORING_OFF"
  condition {
    item     = "COMMAND_LINE_ARGS"
    operator = "CONTAINS"
    value    = "bosh-agent"
  }
}
