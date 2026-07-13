resource "dynatrace_oneagent_features" "JAVA_KAFKA_LISTENERS" {
  enabled = false
  key     = "JAVA_KAFKA_LISTENERS"
  scope   = "environment"
}
