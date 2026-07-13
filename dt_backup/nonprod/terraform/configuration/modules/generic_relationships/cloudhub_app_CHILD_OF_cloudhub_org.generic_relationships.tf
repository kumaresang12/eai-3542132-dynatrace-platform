resource "dynatrace_generic_relationships" "cloudhub_app_CHILD_OF_cloudhub_org" {
  enabled          = true
  created_by       = "com.dynatrace.mulesoft-cloudhub 2.2.6"
  from_type        = "cloudhub:app"
  to_type          = "cloudhub:org"
  type_of_relation = "CHILD_OF"
  sources {
    source {
      condition   = "$prefix(cloudhub.app.)"
      source_type = "Metrics"
    }
  }
}
