resource "dynatrace_oneagent_features" "SENSOR_PYTHON_CREWAI" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_CREWAI"
  scope             = "environment"
}
