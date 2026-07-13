resource "dynatrace_generic_relationships" "sql_sql_server_availability_replica_SAME_AS_sql_sql_server_instance" {
  enabled          = true
  created_by       = "com.dynatrace.extension.sql-server 2.11.5"
  from_type        = "sql:sql_server_availability_replica"
  to_type          = "sql:sql_server_instance"
  type_of_relation = "SAME_AS"
  sources {
    source {
      source_type = "Entities"
      mapping_rules {
        mapping_rule {
          destination_property       = "server"
          destination_transformation = "To lower case"
          source_property            = "ar_server_name"
          source_transformation      = "To lower case"
        }
        mapping_rule {
          destination_property       = "instance"
          destination_transformation = "To lower case"
          source_property            = "ar_instance_name"
          source_transformation      = "To lower case"
        }
      }
    }
  }
}
