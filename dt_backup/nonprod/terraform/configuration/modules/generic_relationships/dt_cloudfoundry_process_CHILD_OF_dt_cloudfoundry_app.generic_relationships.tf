resource "dynatrace_generic_relationships" "dt_cloudfoundry_process_CHILD_OF_dt_cloudfoundry_app" {
  enabled          = true
  created_by       = "com.dynatrace.extension.cloudfoundry 1.0.0"
  from_type        = "dt:cloudfoundry_process"
  to_type          = "dt:cloudfoundry_app"
  type_of_relation = "CHILD_OF"
  sources {
    source {
      source_type = "Entities"
      mapping_rules {
        mapping_rule {
          destination_property       = "guid"
          destination_transformation = "To lower case"
          source_property            = "app_guid"
          source_transformation      = "To lower case"
        }
      }
    }
  }
}
