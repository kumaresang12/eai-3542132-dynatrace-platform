resource "dynatrace_oneagent_features" "DOTNET_SINGLE_FILE_SELF_CONTAINED" {
  enabled = false
  key     = "DOTNET_SINGLE_FILE_SELF_CONTAINED"
  scope   = "environment"
}
