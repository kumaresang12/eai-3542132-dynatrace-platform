resource "dynatrace_oneagent_features" "SENSOR_JAVA_LOG_ENRICHMENT" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_LOG_ENRICHMENT"
  scope           = "environment"
}
