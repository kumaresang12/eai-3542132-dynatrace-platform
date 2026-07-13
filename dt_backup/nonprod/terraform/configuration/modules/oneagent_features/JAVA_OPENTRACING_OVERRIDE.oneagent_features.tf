resource "dynatrace_oneagent_features" "JAVA_OPENTRACING_OVERRIDE" {
  enabled = true
  key     = "JAVA_OPENTRACING_OVERRIDE"
  scope   = "environment"
}
