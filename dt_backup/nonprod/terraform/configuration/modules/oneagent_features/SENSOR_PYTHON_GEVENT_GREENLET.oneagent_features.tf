resource "dynatrace_oneagent_features" "SENSOR_PYTHON_GEVENT_GREENLET" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_GEVENT_GREENLET"
  scope             = "environment"
}
