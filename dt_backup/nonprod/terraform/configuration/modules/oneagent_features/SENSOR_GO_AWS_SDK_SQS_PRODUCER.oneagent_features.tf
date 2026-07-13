resource "dynatrace_oneagent_features" "SENSOR_GO_AWS_SDK_SQS_PRODUCER" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_GO_AWS_SDK_SQS_PRODUCER"
  scope             = "environment"
}
