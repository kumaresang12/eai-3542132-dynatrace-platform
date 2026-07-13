resource "dynatrace_oneagent_features" "JAVA_VIRTUAL_THREADS" {
  enabled = true
  key     = "JAVA_VIRTUAL_THREADS"
  scope   = "environment"
}
