resource "dynatrace_attribute_allow_list" "aws_ecs_cluster" {
  enabled = true
  key     = "aws.ecs.cluster"
}
