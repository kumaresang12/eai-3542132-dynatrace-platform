resource "dynatrace_attribute_allow_list" "aws_x_amzn_request_id" {
  enabled = true
  key     = "aws.x_amzn_request_id"
}
