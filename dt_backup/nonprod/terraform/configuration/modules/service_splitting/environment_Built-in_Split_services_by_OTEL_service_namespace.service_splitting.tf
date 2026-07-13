resource "dynatrace_service_splitting" "environment_Built-in_Split_services_by_OTEL_service_namespace" {
  enabled      = false
  insert_after = "vu9U3hXa3q0AAAABAB9idWlsdGluOnNlcnZpY2Utc3BsaXR0aW5nLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkMzk3ZDJkOTYtOTQ0Yi00NjIwLWJiZGMtMWU5NDM0YzkwN2Ewvu9U3hXa3q0"
  scope        = "environment"
  rule {
    condition = "isNotNull(service.namespace)"
    rule_name = "[Built-in] Split services by OTEL service namespace"
    service_splitting_attributes {
      service_splitting_attribute {
        key = "service.namespace"
      }
    }
  }
}
