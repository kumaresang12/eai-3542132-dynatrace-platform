resource "dynatrace_service_detection_rules" "environment_Built-in_Kubernetes_workload_name" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABAB9idWlsdGluOnNlcnZpY2UtZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkMzAzZjc5NDgtZmVhZi00Y2ExLTlmMzktZDJhYjM5Y2U0MWFhvu9U3hXa3q0"
  scope        = "environment"
  rule {
    condition             = "isNotNull(k8s.workload.name)"
    rule_name             = "[Built-in] Kubernetes workload name"
    service_name_template = "{k8s.workload.name}"
  }
}
