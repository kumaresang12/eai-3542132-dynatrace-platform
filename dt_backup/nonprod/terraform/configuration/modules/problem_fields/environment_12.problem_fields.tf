resource "dynatrace_problem_fields" "environment_12" {
  enabled       = true
  event_field   = "aws.account.id"
  problem_field = "aws.account.id"
}
