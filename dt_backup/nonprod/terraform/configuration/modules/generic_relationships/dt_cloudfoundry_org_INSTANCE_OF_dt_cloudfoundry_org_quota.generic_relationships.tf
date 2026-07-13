resource "dynatrace_generic_relationships" "dt_cloudfoundry_org_INSTANCE_OF_dt_cloudfoundry_org_quota" {
  enabled          = true
  created_by       = "com.dynatrace.extension.cloudfoundry 1.0.0"
  from_type        = "dt:cloudfoundry_org"
  to_type          = "dt:cloudfoundry_org_quota"
  type_of_relation = "INSTANCE_OF"
  sources {
    source {
      source_type = "Entities"
      mapping_rules {
        mapping_rule {
          destination_property       = "guid"
          destination_transformation = "To lower case"
          source_property            = "quota_guid"
          source_transformation      = "To lower case"
        }
      }
    }
  }
}
