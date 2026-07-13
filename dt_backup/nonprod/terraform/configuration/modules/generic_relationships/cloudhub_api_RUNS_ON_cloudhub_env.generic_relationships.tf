resource "dynatrace_generic_relationships" "cloudhub_api_RUNS_ON_cloudhub_env" {
  enabled          = true
  created_by       = "com.dynatrace.mulesoft-cloudhub 2.2.6"
  from_type        = "cloudhub:api"
  to_type          = "cloudhub:env"
  type_of_relation = "RUNS_ON"
  sources {
    source {
      condition   = "$prefix(cloudhub.api.)"
      source_type = "Metrics"
    }
  }
}
