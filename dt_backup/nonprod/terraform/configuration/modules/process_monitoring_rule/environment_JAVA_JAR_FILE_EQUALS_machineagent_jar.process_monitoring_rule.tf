resource "dynatrace_process_monitoring_rule" "environment_JAVA_JAR_FILE_EQUALS_machineagent_jar" {
  enabled       = true
  host_group_id = "environment"
  insert_after  = "vu9U3hXa3q0AAAABAC5idWlsdGluOnByb2Nlc3MuY3VzdG9tLXByb2Nlc3MtbW9uaXRvcmluZy1ydWxlAAZ0ZW5hbnQABnRlbmFudAAkZjRiYjYxYjYtMWQ5Mi0zNjllLWJhNDItNmQzZThjMTU1M2Nlvu9U3hXa3q0"
  mode          = "MONITORING_OFF"
  condition {
    item     = "JAVA_JAR_FILE"
    operator = "EQUALS"
    value    = "machineagent.jar"
  }
}
