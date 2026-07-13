resource "dynatrace_oneagent_features" "SENSOR_GO_AWS_SDK_DYNAMODB" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_GO_AWS_SDK_DYNAMODB"
  scope             = "environment"
}
