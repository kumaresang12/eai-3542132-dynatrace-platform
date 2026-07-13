resource "dynatrace_service_splitting" "environment_Built-in_Split_services_by_k8s_cluster_and_namespace" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABAB9idWlsdGluOnNlcnZpY2Utc3BsaXR0aW5nLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkOTAzNDcyM2EtODExMS00NWVmLWE5NWQtMDAwNzYyMzY2MGQ4vu9U3hXa3q0"
  scope        = "environment"
  rule {
    description = "We recommend to enable this rule."
    condition   = "isNotNull(k8s.namespace.name)"
    rule_name   = "[Built-in] Split services by k8s cluster and namespace"
    service_splitting_attributes {
      service_splitting_attribute {
        key = "k8s.namespace.name"
      }
      service_splitting_attribute {
        key = "k8s.cluster.uid"
      }
    }
  }
}
