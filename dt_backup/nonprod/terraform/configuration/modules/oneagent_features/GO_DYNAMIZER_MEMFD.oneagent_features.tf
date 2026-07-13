resource "dynatrace_oneagent_features" "GO_DYNAMIZER_MEMFD" {
  enabled = false
  key     = "GO_DYNAMIZER_MEMFD"
  scope   = "environment"
}
