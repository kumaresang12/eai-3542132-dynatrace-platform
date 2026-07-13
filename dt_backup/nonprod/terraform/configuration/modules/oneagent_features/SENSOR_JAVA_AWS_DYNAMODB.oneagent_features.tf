resource "dynatrace_oneagent_features" "SENSOR_JAVA_AWS_DYNAMODB" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_JAVA_AWS_DYNAMODB"
  scope             = "environment"
}
