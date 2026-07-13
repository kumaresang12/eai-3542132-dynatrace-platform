resource "dynatrace_service_detection_rules" "environment_Built-in_OpenTelemetry_service_name_deprecated" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABAB9idWlsdGluOnNlcnZpY2UtZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkZTk1M2FhNGYtMjU0Ny00NTg1LWI1MjEtNjFiMGRkOGEzZWQ1vu9U3hXa3q0"
  scope        = "environment"
  rule {
    description           = "We recommend to enable the OpenTelemetry service name rule at the top so it takes precedence by default."
    condition             = "isNotNull(service.name)"
    rule_name             = "[Built-in] OpenTelemetry service name (deprecated)"
    service_name_template = "{service.name}"
  }
}
