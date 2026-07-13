resource "dynatrace_oneagent_features" "BACKGROUND_REQUESTS_MESSAGING" {
  enabled = true
  key     = "BACKGROUND_REQUESTS_MESSAGING"
  scope   = "environment"
}
