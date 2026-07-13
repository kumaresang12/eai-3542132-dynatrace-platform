resource "dynatrace_service_detection_rules" "environment_Built-in_Process_group_detected_name_fallback" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABAB9idWlsdGluOnNlcnZpY2UtZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkYTQ2OWE4OWYtM2JjMS00MzQwLTk1MWUtMjk1NDdhNDg1MTgxvu9U3hXa3q0"
  scope        = "environment"
  rule {
    condition             = "isNotNull(dt.process_group.detected_name)"
    rule_name             = "[Built-in] Process group detected name (fallback)"
    service_name_template = "{dt.process_group.detected_name}"
  }
}
