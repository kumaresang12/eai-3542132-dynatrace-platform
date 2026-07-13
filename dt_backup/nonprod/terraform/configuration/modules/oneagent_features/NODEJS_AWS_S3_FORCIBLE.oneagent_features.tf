resource "dynatrace_oneagent_features" "NODEJS_AWS_S3_FORCIBLE" {
  enabled = true
  key     = "NODEJS_AWS_S3_FORCIBLE"
  scope   = "environment"
}
