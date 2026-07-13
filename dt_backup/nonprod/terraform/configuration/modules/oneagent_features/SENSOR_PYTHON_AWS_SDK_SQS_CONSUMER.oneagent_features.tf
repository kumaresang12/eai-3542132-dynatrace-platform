resource "dynatrace_oneagent_features" "SENSOR_PYTHON_AWS_SDK_SQS_CONSUMER" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_AWS_SDK_SQS_CONSUMER"
  scope             = "environment"
}
