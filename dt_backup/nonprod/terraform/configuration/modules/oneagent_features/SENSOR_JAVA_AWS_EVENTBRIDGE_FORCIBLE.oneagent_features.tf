resource "dynatrace_oneagent_features" "SENSOR_JAVA_AWS_EVENTBRIDGE_FORCIBLE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_AWS_EVENTBRIDGE_FORCIBLE"
  scope           = "environment"
}
