resource "dynatrace_oneagent_features" "SENSOR_PYTHON_OPENTELEMETRY" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_OPENTELEMETRY"
  scope             = "environment"
}
