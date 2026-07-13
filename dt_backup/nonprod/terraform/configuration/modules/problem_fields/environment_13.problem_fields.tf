resource "dynatrace_problem_fields" "environment_13" {
  enabled       = true
  event_field   = "aws.region"
  problem_field = "aws.region"
}
