resource "dynatrace_oneagent_features" "SENSOR_DOTNET_LOG_ENRICHMENT" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_DOTNET_LOG_ENRICHMENT"
  scope           = "environment"
}
