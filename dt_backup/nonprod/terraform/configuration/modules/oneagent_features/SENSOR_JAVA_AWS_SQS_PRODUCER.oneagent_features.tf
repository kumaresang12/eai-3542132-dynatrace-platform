resource "dynatrace_oneagent_features" "SENSOR_JAVA_AWS_SQS_PRODUCER" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_JAVA_AWS_SQS_PRODUCER"
  scope             = "environment"
}
