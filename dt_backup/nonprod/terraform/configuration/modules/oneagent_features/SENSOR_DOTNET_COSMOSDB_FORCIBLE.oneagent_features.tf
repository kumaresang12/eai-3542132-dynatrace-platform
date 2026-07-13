resource "dynatrace_oneagent_features" "SENSOR_DOTNET_COSMOSDB_FORCIBLE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_DOTNET_COSMOSDB_FORCIBLE"
  scope           = "environment"
}
