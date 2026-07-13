resource "dynatrace_generic_relationships" "sql_db2_instance_SAME_AS_process_group_instance" {
  enabled          = true
  created_by       = "com.dynatrace.extension.sql-db2 2.5.0"
  from_type        = "sql:db2_instance"
  to_type          = "process_group_instance"
  type_of_relation = "SAME_AS"
  sources {
    source {
      source_type = "Entities"
      mapping_rules {
        mapping_rule {
          destination_property       = "dt.ip_addresses"
          destination_transformation = "Leave text as-is"
          source_property            = "dt.ip_addresses"
          source_transformation      = "Leave text as-is"
        }
        mapping_rule {
          destination_property       = "dt.listen_ports"
          destination_transformation = "Leave text as-is"
          source_property            = "dt.listen_ports"
          source_transformation      = "Leave text as-is"
        }
      }
    }
  }
}
