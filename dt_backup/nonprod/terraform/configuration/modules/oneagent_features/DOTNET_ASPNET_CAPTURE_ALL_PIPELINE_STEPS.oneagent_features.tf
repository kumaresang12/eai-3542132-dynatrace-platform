resource "dynatrace_oneagent_features" "DOTNET_ASPNET_CAPTURE_ALL_PIPELINE_STEPS" {
  enabled = true
  key     = "DOTNET_ASPNET_CAPTURE_ALL_PIPELINE_STEPS"
  scope   = "environment"
}
