resource "dynatrace_oneagent_features" "SENSOR_PYTHON_KOMBU_PRODUCER" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_KOMBU_PRODUCER"
  scope             = "environment"
}
