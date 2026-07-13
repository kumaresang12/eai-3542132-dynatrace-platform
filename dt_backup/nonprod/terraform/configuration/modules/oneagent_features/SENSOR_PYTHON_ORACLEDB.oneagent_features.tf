resource "dynatrace_oneagent_features" "SENSOR_PYTHON_ORACLEDB" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_ORACLEDB"
  scope             = "environment"
}
