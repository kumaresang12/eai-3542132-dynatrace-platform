resource "dynatrace_oneagent_features" "SENSOR_PYTHON_PSYCOPG2" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_PYTHON_PSYCOPG2"
  scope             = "environment"
}
