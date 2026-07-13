resource "dynatrace_service_detection_rules" "environment_Built-in_Spring_application_name" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABAB9idWlsdGluOnNlcnZpY2UtZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkMjIxMzM3NmQtYzMwNC00MGY3LThmMzYtYzMzYWM1MGJhNjlivu9U3hXa3q0"
  scope        = "environment"
  rule {
    condition             = "isNotNull(spring.application.name)"
    rule_name             = "[Built-in] Spring application name"
    service_name_template = "{spring.application.name}"
  }
}
