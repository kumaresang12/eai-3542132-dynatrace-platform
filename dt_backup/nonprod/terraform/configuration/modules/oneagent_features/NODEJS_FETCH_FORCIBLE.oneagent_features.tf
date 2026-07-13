resource "dynatrace_oneagent_features" "NODEJS_FETCH_FORCIBLE" {
  enabled = true
  key     = "NODEJS_FETCH_FORCIBLE"
  scope   = "environment"
}
