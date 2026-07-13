resource "dynatrace_oneagent_features" "SENSOR_GO_AWS_SDK_SNS_PUBLISHER" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_GO_AWS_SDK_SNS_PUBLISHER"
  scope             = "environment"
}
