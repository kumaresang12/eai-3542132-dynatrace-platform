resource "dynatrace_attribute_allow_list" "aws_ecs_family" {
  enabled = true
  key     = "aws.ecs.family"
}
