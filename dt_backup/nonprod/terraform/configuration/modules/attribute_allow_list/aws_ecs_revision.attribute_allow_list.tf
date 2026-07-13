resource "dynatrace_attribute_allow_list" "aws_ecs_revision" {
  enabled = true
  key     = "aws.ecs.revision"
}
