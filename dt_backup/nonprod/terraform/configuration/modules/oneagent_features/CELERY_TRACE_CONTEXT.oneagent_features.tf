resource "dynatrace_oneagent_features" "CELERY_TRACE_CONTEXT" {
  enabled = false
  key     = "CELERY_TRACE_CONTEXT"
  scope   = "environment"
}
