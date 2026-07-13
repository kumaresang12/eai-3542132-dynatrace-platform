resource "dynatrace_oneagent_features" "KAFKA_TRACE_CONTEXT" {
  enabled = false
  key     = "KAFKA_TRACE_CONTEXT"
  scope   = "environment"
}
