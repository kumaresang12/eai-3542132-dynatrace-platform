resource "dynatrace_service_detection_rules" "environment_Built-in_AWS_ECS_Fargate_task_family" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABAB9idWlsdGluOnNlcnZpY2UtZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkYmUwYTEyYjYtZjdkMC00NTAwLTgwMjgtMWY3NjgwMWM3NzZlvu9U3hXa3q0"
  scope        = "environment"
  rule {
    condition             = "isNotNull(aws.ecs.family)"
    rule_name             = "[Built-in] AWS ECS/Fargate task family"
    service_name_template = "{aws.ecs.family}"
  }
}
