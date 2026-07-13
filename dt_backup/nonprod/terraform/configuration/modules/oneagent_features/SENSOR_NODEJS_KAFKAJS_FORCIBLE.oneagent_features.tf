resource "dynatrace_oneagent_features" "SENSOR_NODEJS_KAFKAJS_FORCIBLE" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_KAFKAJS_FORCIBLE"
  scope           = "environment"
}
