resource "dynatrace_oneagent_features" "JAVA_OPENTRACING_TRACERRESOLVER_OVERRIDE" {
  enabled = true
  key     = "JAVA_OPENTRACING_TRACERRESOLVER_OVERRIDE"
  scope   = "environment"
}
