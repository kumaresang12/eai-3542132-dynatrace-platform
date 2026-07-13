resource "dynatrace_oneagent_features" "SENSOR_SDK_PYTHON_INCOMING_WEBREQUEST" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_SDK_PYTHON_INCOMING_WEBREQUEST"
  scope             = "environment"
}
