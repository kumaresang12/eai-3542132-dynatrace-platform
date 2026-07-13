resource "dynatrace_oneagent_features" "JAVA_METRIC_EXTENSIONS_FORCIBLE" {
  enabled = true
  key     = "JAVA_METRIC_EXTENSIONS_FORCIBLE"
  scope   = "environment"
}
