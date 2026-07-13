resource "dynatrace_oneagent_features" "SENSOR_JAVA_PEKKO" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_PEKKO"
  scope           = "environment"
}
