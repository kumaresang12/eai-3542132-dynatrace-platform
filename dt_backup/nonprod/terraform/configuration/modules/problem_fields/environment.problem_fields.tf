resource "dynatrace_problem_fields" "environment" {
  enabled       = true
  event_field   = "dt.cost.costcenter"
  problem_field = "dt.cost.costcenter"
}
