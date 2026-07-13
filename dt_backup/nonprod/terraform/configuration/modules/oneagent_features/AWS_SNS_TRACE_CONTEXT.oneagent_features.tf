resource "dynatrace_oneagent_features" "AWS_SNS_TRACE_CONTEXT" {
  enabled = false
  key     = "AWS_SNS_TRACE_CONTEXT"
  scope   = "environment"
}
