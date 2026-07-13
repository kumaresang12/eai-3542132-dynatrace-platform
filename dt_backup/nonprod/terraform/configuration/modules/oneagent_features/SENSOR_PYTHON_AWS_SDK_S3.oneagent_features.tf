resource "dynatrace_oneagent_features" "SENSOR_PYTHON_AWS_SDK_S3" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_AWS_SDK_S3"
  scope             = "environment"
}
