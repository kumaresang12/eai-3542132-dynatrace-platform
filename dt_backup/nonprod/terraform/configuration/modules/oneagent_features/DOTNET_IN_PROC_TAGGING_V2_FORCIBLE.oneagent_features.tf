resource "dynatrace_oneagent_features" "DOTNET_IN_PROC_TAGGING_V2_FORCIBLE" {
  enabled  = true
  forcible = true
  key      = "DOTNET_IN_PROC_TAGGING_V2_FORCIBLE"
  scope    = "environment"
}
