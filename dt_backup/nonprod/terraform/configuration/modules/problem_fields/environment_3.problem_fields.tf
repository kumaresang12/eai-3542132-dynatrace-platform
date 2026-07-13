resource "dynatrace_problem_fields" "environment_3" {
  enabled       = true
  event_field   = "dt.host_group.id"
  problem_field = "dt.host_group.id"
}
