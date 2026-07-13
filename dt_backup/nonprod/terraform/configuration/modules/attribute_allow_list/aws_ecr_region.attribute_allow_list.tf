resource "dynatrace_attribute_allow_list" "aws_ecr_region" {
  enabled = true
  key     = "aws.ecr.region"
}
