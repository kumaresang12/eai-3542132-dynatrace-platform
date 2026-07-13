resource "dynatrace_oneagent_features" "SENSOR_PYTHON_MYSQLCLIENT" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_MYSQLCLIENT"
  scope             = "environment"
}
