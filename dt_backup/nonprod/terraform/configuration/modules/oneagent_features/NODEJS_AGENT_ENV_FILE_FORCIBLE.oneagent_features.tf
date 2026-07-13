resource "dynatrace_oneagent_features" "NODEJS_AGENT_ENV_FILE_FORCIBLE" {
  enabled = true
  key     = "NODEJS_AGENT_ENV_FILE_FORCIBLE"
  scope   = "environment"
}
