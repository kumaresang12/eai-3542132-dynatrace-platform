resource "dynatrace_oneagent_features" "NODEJS_WORKERTHREADS_FORCIBLE" {
  enabled = true
  key     = "NODEJS_WORKERTHREADS_FORCIBLE"
  scope   = "environment"
}
