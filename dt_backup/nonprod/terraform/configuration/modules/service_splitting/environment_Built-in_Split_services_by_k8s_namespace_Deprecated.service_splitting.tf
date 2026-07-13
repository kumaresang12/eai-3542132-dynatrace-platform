resource "dynatrace_service_splitting" "environment_Built-in_Split_services_by_k8s_namespace_Deprecated" {
  enabled      = false
  insert_after = "vu9U3hXa3q0AAAABAB9idWlsdGluOnNlcnZpY2Utc3BsaXR0aW5nLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkNWJiZTg4ZjQtZjNjMy00NDBhLThkYTEtZDA5MzQzYjhiYzU0vu9U3hXa3q0"
  scope        = "environment"
  rule {
    description = "We recommend to enable the rule above to split services by k8s cluster and namespace."
    condition   = "isNotNull(k8s.namespace.name)"
    rule_name   = "[Built-in] Split services by k8s namespace (Deprecated)"
    service_splitting_attributes {
      service_splitting_attribute {
        key = "k8s.namespace.name"
      }
    }
  }
}
