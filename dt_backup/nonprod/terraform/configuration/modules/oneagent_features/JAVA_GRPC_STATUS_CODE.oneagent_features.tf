resource "dynatrace_oneagent_features" "JAVA_GRPC_STATUS_CODE" {
  enabled = false
  key     = "JAVA_GRPC_STATUS_CODE"
  scope   = "environment"
}
