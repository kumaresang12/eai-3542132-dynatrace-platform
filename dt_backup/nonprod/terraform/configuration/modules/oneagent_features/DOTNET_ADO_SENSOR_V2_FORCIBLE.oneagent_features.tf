resource "dynatrace_oneagent_features" "DOTNET_ADO_SENSOR_V2_FORCIBLE" {
  enabled  = true
  forcible = true
  key      = "DOTNET_ADO_SENSOR_V2_FORCIBLE"
  scope    = "environment"
}
