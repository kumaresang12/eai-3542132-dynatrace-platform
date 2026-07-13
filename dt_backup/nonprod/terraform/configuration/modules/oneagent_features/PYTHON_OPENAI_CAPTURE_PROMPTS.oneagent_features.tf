resource "dynatrace_oneagent_features" "PYTHON_OPENAI_CAPTURE_PROMPTS" {
  enabled = false
  key     = "PYTHON_OPENAI_CAPTURE_PROMPTS"
  scope   = "environment"
}
