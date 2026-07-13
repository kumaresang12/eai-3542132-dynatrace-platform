resource "dynatrace_problem_fields" "environment_1" {
  enabled       = true
  event_field   = "k8s.cluster.name"
  problem_field = "k8s.cluster.name"
}
