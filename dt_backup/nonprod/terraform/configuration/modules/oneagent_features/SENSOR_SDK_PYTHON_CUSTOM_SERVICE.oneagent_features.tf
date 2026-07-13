resource "dynatrace_oneagent_features" "SENSOR_SDK_PYTHON_CUSTOM_SERVICE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_SDK_PYTHON_CUSTOM_SERVICE"
  scope           = "environment"
}
