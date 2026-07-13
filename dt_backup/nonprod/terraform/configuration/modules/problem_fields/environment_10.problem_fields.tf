resource "dynatrace_problem_fields" "environment_10" {
  enabled       = true
  event_field   = "gcp.project.id"
  problem_field = "gcp.project.id"
}
