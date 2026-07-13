resource "dynatrace_oneagent_features" "SENSOR_APACHE_LOG_ENRICHMENT" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_APACHE_LOG_ENRICHMENT"
  scope           = "environment"
}
