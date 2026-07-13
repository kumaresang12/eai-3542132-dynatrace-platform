resource "dynatrace_oneagent_features" "SENSOR_ZAGENT_DB2_METRICS" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_ZAGENT_DB2_METRICS"
  scope             = "environment"
}
