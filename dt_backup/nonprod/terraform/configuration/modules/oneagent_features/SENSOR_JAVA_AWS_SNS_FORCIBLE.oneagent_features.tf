resource "dynatrace_oneagent_features" "SENSOR_JAVA_AWS_SNS_FORCIBLE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_AWS_SNS_FORCIBLE"
  scope           = "environment"
}
