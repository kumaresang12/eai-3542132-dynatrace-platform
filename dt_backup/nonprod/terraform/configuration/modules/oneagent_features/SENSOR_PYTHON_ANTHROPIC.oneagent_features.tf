resource "dynatrace_oneagent_features" "SENSOR_PYTHON_ANTHROPIC" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_ANTHROPIC"
  scope             = "environment"
}
