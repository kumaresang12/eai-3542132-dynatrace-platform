resource "dynatrace_problem_fields" "environment_18" {
  enabled       = true
  event_field   = "dt.security_context"
  problem_field = "dt.security_context"
}
