resource "dynatrace_oneagent_features" "JAVA_LIVEDEBUGGER" {
  enabled = true
  key     = "JAVA_LIVEDEBUGGER"
  scope   = "environment"
}
