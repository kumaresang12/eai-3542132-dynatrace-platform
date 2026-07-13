resource "dynatrace_generic_relationships" "os_service_RUNS_ON_host" {
  enabled          = true
  created_by       = "Dynatrace"
  from_type        = "os:service"
  to_type          = "host"
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
    source {
      condition   = "$eq(AVAILABILITY_EVENT)"
      source_type = "Events"
    }
  }
}
