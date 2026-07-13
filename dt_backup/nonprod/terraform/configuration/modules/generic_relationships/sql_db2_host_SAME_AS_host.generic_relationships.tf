resource "dynatrace_generic_relationships" "sql_db2_host_SAME_AS_host" {
  enabled          = true
  created_by       = "com.dynatrace.extension.sql-db2 2.5.0"
  from_type        = "sql:db2_host"
  to_type          = "host"
  type_of_relation = "SAME_AS"
  sources {
    source {
      source_type = "Entities"
      mapping_rules {
        mapping_rule {
          destination_property       = "ipAddress"
          destination_transformation = "To lower case"
          source_property            = "dt.ip_addresses"
          source_transformation      = "To lower case"
        }
      }
    }
  }
}
