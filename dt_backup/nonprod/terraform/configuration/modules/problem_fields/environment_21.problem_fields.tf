resource "dynatrace_problem_fields" "environment_21" {
  enabled       = true
  event_field   = "azure.location"
  problem_field = "azure.location"
}
