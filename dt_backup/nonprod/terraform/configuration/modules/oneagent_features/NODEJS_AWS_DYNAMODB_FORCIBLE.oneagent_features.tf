resource "dynatrace_oneagent_features" "NODEJS_AWS_DYNAMODB_FORCIBLE" {
  enabled = true
  key     = "NODEJS_AWS_DYNAMODB_FORCIBLE"
  scope   = "environment"
}
