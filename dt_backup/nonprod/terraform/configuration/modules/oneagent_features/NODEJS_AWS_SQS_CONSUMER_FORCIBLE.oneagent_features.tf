resource "dynatrace_oneagent_features" "NODEJS_AWS_SQS_CONSUMER_FORCIBLE" {
  enabled = true
  key     = "NODEJS_AWS_SQS_CONSUMER_FORCIBLE"
  scope   = "environment"
}
