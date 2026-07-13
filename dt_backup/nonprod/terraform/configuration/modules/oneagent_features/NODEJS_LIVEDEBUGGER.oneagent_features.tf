resource "dynatrace_oneagent_features" "NODEJS_LIVEDEBUGGER" {
  enabled = true
  key     = "NODEJS_LIVEDEBUGGER"
  scope   = "environment"
}
