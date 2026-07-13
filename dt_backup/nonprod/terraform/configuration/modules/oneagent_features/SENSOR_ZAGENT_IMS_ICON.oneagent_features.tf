resource "dynatrace_oneagent_features" "SENSOR_ZAGENT_IMS_ICON" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_ZAGENT_IMS_ICON"
  scope           = "environment"
}
