resource "dynatrace_generic_relationships" "span_service_instance_RUNS_ON_cloud_application_instance" {
  enabled          = true
  created_by       = "Dynatrace"
  from_type        = "span:service_instance"
  to_type          = "cloud_application_instance"
  type_of_relation = "RUNS_ON"
  sources {
    source {
      source_type = "Spans"
    }
  }
}
