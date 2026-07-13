resource "dynatrace_oneagent_features" "SENSOR_PYTHON_OPENAI_AGENTS" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_OPENAI_AGENTS"
  scope             = "environment"
}
