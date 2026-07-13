resource "dynatrace_process_monitoring_rule" "environment_JAVA_MAIN_CLASS_EQUALS_com_urbancode_air_agent_CompactAgentLauncher" {
  enabled       = true
  host_group_id = "environment"
  insert_after  = "vu9U3hXa3q0AAAABAC5idWlsdGluOnByb2Nlc3MuY3VzdG9tLXByb2Nlc3MtbW9uaXRvcmluZy1ydWxlAAZ0ZW5hbnQABnRlbmFudAAkOTJmNzkyMjktMjAyMC0zYTIxLWJkZDAtNWY4ZWNkZTA1Nzhkvu9U3hXa3q0"
  mode          = "MONITORING_OFF"
  condition {
    item     = "JAVA_MAIN_CLASS"
    operator = "EQUALS"
    value    = "com.urbancode.air.agent.CompactAgentLauncher"
  }
}
