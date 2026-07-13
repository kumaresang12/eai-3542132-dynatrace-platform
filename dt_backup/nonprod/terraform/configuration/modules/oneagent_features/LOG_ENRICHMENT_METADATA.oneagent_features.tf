resource "dynatrace_oneagent_features" "LOG_ENRICHMENT_METADATA" {
  enabled = true
  key     = "LOG_ENRICHMENT_METADATA"
  scope   = "environment"
}
