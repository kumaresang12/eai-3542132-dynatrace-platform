resource "dynatrace_oneagent_features" "AWS_EVENT_BRIDGE_TRACE_CONTEXT" {
  enabled = false
  key     = "AWS_EVENT_BRIDGE_TRACE_CONTEXT"
  scope   = "environment"
}
