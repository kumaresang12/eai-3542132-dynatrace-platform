resource "dynatrace_oneagent_features" "SENSOR_PYTHON_AWS_SDK_BEDROCK" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_AWS_SDK_BEDROCK"
  scope             = "environment"
}
