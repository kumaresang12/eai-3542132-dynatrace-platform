resource "dynatrace_oneagent_features" "SENSOR_PYTHON_KOMBU_CONSUMER" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_KOMBU_CONSUMER"
  scope             = "environment"
}
