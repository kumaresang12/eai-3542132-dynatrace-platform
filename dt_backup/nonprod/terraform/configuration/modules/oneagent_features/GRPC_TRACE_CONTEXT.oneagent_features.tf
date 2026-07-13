resource "dynatrace_oneagent_features" "GRPC_TRACE_CONTEXT" {
  enabled = true
  key     = "GRPC_TRACE_CONTEXT"
  scope   = "environment"
}
