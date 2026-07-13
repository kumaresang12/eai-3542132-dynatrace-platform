resource "dynatrace_attribute_allow_list" "aws_ecs_container_name" {
  enabled = true
  key     = "aws.ecs.container.name"
}
