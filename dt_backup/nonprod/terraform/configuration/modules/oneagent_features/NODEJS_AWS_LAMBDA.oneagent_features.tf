resource "dynatrace_oneagent_features" "NODEJS_AWS_LAMBDA" {
  enabled = true
  key     = "NODEJS_AWS_LAMBDA"
  scope   = "environment"
}
