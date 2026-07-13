resource "dynatrace_attribute_allow_list" "aws_xray_trace_id" {
  enabled = true
  key     = "aws.xray.trace_id"
}
