resource "dynatrace_oneagent_features" "SENSOR_PYTHON_CELERY" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_CELERY"
  scope             = "environment"
}
