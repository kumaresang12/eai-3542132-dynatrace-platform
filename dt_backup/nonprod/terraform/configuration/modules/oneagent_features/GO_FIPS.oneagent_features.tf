resource "dynatrace_oneagent_features" "GO_FIPS" {
  enabled = false
  key     = "GO_FIPS"
  scope   = "environment"
}
