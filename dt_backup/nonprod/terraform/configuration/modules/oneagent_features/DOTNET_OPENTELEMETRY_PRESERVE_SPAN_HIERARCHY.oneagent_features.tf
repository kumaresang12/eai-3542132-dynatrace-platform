resource "dynatrace_oneagent_features" "DOTNET_OPENTELEMETRY_PRESERVE_SPAN_HIERARCHY" {
  enabled = false
  key     = "DOTNET_OPENTELEMETRY_PRESERVE_SPAN_HIERARCHY"
  scope   = "environment"
}
