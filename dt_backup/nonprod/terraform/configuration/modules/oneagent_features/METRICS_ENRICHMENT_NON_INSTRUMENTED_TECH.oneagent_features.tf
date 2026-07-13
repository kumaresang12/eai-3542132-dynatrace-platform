resource "dynatrace_oneagent_features" "METRICS_ENRICHMENT_NON_INSTRUMENTED_TECH" {
  enabled = true
  key     = "METRICS_ENRICHMENT_NON_INSTRUMENTED_TECH"
  scope   = "environment"
}
