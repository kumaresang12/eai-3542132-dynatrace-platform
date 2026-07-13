resource "dynatrace_oneagent_features" "JAVA_EXPAND_ATFILES" {
  enabled = true
  key     = "JAVA_EXPAND_ATFILES"
  scope   = "environment"
}
