resource "dynatrace_oneagent_features" "GO_LOG_ENRICHMENT" {
  enabled = true
  key     = "GO_LOG_ENRICHMENT"
  scope   = "environment"
}
