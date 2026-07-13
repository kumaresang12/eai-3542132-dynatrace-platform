resource "dynatrace_oneagent_features" "PYTHON_AUTOSENSOR" {
  enabled = false
  key     = "PYTHON_AUTOSENSOR"
  scope   = "environment"
}
