resource "dynatrace_oneagent_features" "DOTNET_LOG_ENRICHMENT_UNSTRUCTURED" {
  enabled = true
  key     = "DOTNET_LOG_ENRICHMENT_UNSTRUCTURED"
  scope   = "environment"
}
