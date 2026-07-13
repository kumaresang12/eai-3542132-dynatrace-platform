resource "dynatrace_oneagent_features" "JAVA_LOG_ENRICHMENT_UNSTRUCTURED" {
  enabled = true
  key     = "JAVA_LOG_ENRICHMENT_UNSTRUCTURED"
  scope   = "environment"
}
