resource "dynatrace_service_splitting" "environment_Built-in_Split_AWS_ECS_Fargate_services_by_ECS_cluster" {
  enabled      = false
  insert_after = "vu9U3hXa3q0AAAABAB9idWlsdGluOnNlcnZpY2Utc3BsaXR0aW5nLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkZDI0NmIyNDEtZTc4Zi00MWRjLTgxM2YtNmExZjdhODkzYjNlvu9U3hXa3q0"
  scope        = "environment"
  rule {
    condition = "isNotNull(aws.ecs.family)"
    rule_name = "[Built-in] Split AWS ECS/Fargate services by ECS cluster"
    service_splitting_attributes {
      service_splitting_attribute {
        key = "aws.ecs.cluster"
      }
    }
  }
}
