resource "dynatrace_service_detection_rules" "environment_Built-in_OpenTelemetry_service_name" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABAB9idWlsdGluOnNlcnZpY2UtZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkMjdiMjEwZDgtYWY0MC0zODBiLThlMWYtZWNlNjIyMDVjOGRmvu9U3hXa3q0"
  scope        = "environment"
  rule {
    condition             = "isNotNull(service.name) and service.name != \"unknown_service\""
    rule_name             = "[Built-in] OpenTelemetry service name"
    service_name_template = "{service.name}"
  }
}
