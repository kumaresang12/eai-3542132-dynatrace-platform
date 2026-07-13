resource "dynatrace_attribute_allow_list" "aws_request_id" {
  enabled = true
  key     = "aws.request_id"
}
