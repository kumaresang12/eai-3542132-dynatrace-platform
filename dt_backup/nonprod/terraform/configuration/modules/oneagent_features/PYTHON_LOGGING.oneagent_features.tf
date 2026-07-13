resource "dynatrace_oneagent_features" "PYTHON_LOGGING" {
  enabled = false
  key     = "PYTHON_LOGGING"
  scope   = "environment"
}
