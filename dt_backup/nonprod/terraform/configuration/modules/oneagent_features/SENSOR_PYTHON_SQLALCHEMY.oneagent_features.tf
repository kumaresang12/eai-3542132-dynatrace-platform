resource "dynatrace_oneagent_features" "SENSOR_PYTHON_SQLALCHEMY" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_SQLALCHEMY"
  scope             = "environment"
}
