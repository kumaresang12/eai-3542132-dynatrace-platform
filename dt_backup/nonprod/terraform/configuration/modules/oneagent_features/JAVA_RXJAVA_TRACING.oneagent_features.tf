resource "dynatrace_oneagent_features" "JAVA_RXJAVA_TRACING" {
  enabled = true
  key     = "JAVA_RXJAVA_TRACING"
  scope   = "environment"
}
