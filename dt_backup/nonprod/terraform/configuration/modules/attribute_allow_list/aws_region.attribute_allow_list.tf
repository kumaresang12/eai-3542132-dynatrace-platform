resource "dynatrace_attribute_allow_list" "aws_region" {
  enabled = true
  key     = "aws.region"
}
