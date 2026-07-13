resource "dynatrace_oneagent_features" "PYTHON_AMBIENT_SAMPLING" {
  enabled = false
  key     = "PYTHON_AMBIENT_SAMPLING"
  scope   = "environment"
}
