resource "dynatrace_oneagent_features" "SENSOR_DOTNET_REDIS" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_DOTNET_REDIS"
  scope             = "environment"
}
