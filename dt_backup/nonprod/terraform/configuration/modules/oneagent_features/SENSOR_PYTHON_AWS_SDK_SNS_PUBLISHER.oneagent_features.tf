resource "dynatrace_oneagent_features" "SENSOR_PYTHON_AWS_SDK_SNS_PUBLISHER" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_AWS_SDK_SNS_PUBLISHER"
  scope             = "environment"
}
