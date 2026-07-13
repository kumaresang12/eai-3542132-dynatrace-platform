resource "dynatrace_oneagent_features" "AWS_SQS_TRACE_CONTEXT" {
  enabled = false
  key     = "AWS_SQS_TRACE_CONTEXT"
  scope   = "environment"
}
