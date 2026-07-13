resource "dynatrace_problem_fields" "environment_2" {
  enabled       = true
  event_field   = "gcp.region"
  problem_field = "gcp.region"
}
