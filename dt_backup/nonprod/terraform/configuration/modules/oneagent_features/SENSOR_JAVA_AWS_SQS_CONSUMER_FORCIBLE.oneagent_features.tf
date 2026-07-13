resource "dynatrace_oneagent_features" "SENSOR_JAVA_AWS_SQS_CONSUMER_FORCIBLE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_AWS_SQS_CONSUMER_FORCIBLE"
  scope           = "environment"
}
