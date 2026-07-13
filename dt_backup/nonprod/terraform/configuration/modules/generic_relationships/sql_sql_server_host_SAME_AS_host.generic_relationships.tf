resource "dynatrace_generic_relationships" "sql_sql_server_host_SAME_AS_host" {
  enabled          = true
  created_by       = "com.dynatrace.extension.sql-server 2.11.5"
  from_type        = "sql:sql_server_host"
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
