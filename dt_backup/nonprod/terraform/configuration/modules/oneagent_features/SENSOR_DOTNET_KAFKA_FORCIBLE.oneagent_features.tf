resource "dynatrace_oneagent_features" "SENSOR_DOTNET_KAFKA_FORCIBLE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_DOTNET_KAFKA_FORCIBLE"
  scope           = "environment"
}
