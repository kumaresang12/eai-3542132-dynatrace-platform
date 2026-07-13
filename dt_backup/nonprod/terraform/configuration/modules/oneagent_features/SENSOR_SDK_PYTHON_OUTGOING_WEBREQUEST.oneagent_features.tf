resource "dynatrace_oneagent_features" "SENSOR_SDK_PYTHON_OUTGOING_WEBREQUEST" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_SDK_PYTHON_OUTGOING_WEBREQUEST"
  scope             = "environment"
}
