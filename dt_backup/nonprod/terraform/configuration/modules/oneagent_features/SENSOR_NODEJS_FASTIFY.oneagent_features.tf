resource "dynatrace_oneagent_features" "SENSOR_NODEJS_FASTIFY" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_NODEJS_FASTIFY"
  scope           = "environment"
}
