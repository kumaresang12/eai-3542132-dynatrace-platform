resource "dynatrace_generic_relationships" "process_group_instance_RUNS_ON_os_service" {
  enabled          = true
  created_by       = "Dynatrace"
  from_type        = "process_group_instance"
  to_type          = "os:service"
  type_of_relation = "RUNS_ON"
  sources {
    source {
      source_type = "Topology"
    }
    source {
      condition   = "$eq(builtin:osservice.availability)"
      source_type = "Metrics"
    }
    source {
      condition   = "$eq(dt.osservice.availability)"
      source_type = "Metrics"
    }
  }
}
