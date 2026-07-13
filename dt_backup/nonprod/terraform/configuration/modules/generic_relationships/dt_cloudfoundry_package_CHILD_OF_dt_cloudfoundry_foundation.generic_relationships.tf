resource "dynatrace_generic_relationships" "dt_cloudfoundry_package_CHILD_OF_dt_cloudfoundry_foundation" {
  enabled          = true
  created_by       = "com.dynatrace.extension.cloudfoundry 1.0.0"
  from_type        = "dt:cloudfoundry_package"
  to_type          = "dt:cloudfoundry_foundation"
  type_of_relation = "CHILD_OF"
  sources {
    source {
      condition   = "$prefix(cloudfoundry)"
      source_type = "Metrics"
    }
  }
}
