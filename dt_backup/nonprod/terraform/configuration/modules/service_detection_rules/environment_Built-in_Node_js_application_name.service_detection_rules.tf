resource "dynatrace_service_detection_rules" "environment_Built-in_Node_js_application_name" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABAB9idWlsdGluOnNlcnZpY2UtZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkOWRjNTU2NTMtM2RhZi00MzY5LWJkM2ItNmU2MmFmMjBkZDU0vu9U3hXa3q0"
  scope        = "environment"
  rule {
    condition             = "isNotNull(nodejs.app.name)"
    rule_name             = "[Built-in] Node.js application name"
    service_name_template = "{nodejs.app.name}"
  }
}
