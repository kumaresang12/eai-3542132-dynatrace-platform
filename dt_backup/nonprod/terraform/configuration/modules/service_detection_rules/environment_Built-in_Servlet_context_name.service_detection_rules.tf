resource "dynatrace_service_detection_rules" "environment_Built-in_Servlet_context_name" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABAB9idWlsdGluOnNlcnZpY2UtZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkMjQzNWQzMWItYTJmYi00ZjlkLWFmM2ItMjM4MzMzNDkwMGVlvu9U3hXa3q0"
  scope        = "environment"
  rule {
    condition             = "isNotNull(servlet.context.name)"
    rule_name             = "[Built-in] Servlet context name"
    service_name_template = "{servlet.context.name}"
  }
}
