resource "dynatrace_oneagent_features" "BACKGROUND_REQUESTS_HTTP_GRPC" {
  enabled = true
  key     = "BACKGROUND_REQUESTS_HTTP_GRPC"
  scope   = "environment"
}
