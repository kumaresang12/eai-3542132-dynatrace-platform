resource "dynatrace_generic_relationships" "dt_cloudfoundry_route_CHILD_OF_dt_cloudfoundry_domain" {
  enabled          = true
  created_by       = "com.dynatrace.extension.cloudfoundry 1.0.0"
  from_type        = "dt:cloudfoundry_route"
  to_type          = "dt:cloudfoundry_domain"
  type_of_relation = "CHILD_OF"
  sources {
    source {
      source_type = "Entities"
      mapping_rules {
        mapping_rule {
          destination_property       = "guid"
          destination_transformation = "To lower case"
          source_property            = "space_guid"
          source_transformation      = "To lower case"
        }
      }
    }
  }
}
