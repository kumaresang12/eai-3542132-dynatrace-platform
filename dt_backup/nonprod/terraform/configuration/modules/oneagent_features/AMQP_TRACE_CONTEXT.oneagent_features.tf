resource "dynatrace_oneagent_features" "AMQP_TRACE_CONTEXT" {
  enabled = true
  key     = "AMQP_TRACE_CONTEXT"
  scope   = "environment"
}
