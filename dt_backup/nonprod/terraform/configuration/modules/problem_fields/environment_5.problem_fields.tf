resource "dynatrace_problem_fields" "environment_5" {
  enabled       = true
  event_field   = "cloud.region"
  problem_field = "cloud.region"
}
