resource "dynatrace_oneagent_features" "SENSOR_PYTHON_AWS_SDK_LAMBDA_INVOKE" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_AWS_SDK_LAMBDA_INVOKE"
  scope             = "environment"
}
