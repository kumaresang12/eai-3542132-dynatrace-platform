resource "dynatrace_generic_relationships" "cloudhub_worker_CHILD_OF_cloudhub_app" {
  enabled          = true
  created_by       = "com.dynatrace.mulesoft-cloudhub 2.2.6"
  from_type        = "cloudhub:worker"
  to_type          = "cloudhub:app"
  type_of_relation = "CHILD_OF"
  sources {
    source {
      condition   = "$prefix(cloudhub.app.worker.)"
      source_type = "Metrics"
    }
  }
}
