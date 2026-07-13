resource "dynatrace_service_detection_rules" "environment_Built-in_Dynatrace_Kubernetes_workload_name" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABAB9idWlsdGluOnNlcnZpY2UtZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkZWJjYTgzODMtMzNmOS00YTY5LWE3OWUtNjYxNWRjZjQyYjllvu9U3hXa3q0"
  scope        = "environment"
  rule {
    condition             = "isNotNull(dt.kubernetes.workload.name)"
    rule_name             = "[Built-in] Dynatrace Kubernetes workload name"
    service_name_template = "{dt.kubernetes.workload.name}"
  }
}
