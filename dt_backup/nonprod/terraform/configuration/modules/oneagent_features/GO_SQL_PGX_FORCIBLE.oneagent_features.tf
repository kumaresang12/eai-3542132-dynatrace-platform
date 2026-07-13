resource "dynatrace_oneagent_features" "GO_SQL_PGX_FORCIBLE" {
  enabled = true
  key     = "GO_SQL_PGX_FORCIBLE"
  scope   = "environment"
}
