resource "dynatrace_generic_relationships" "sql_sql_server_availability_replica_INSTANCE_OF_sql_sql_server_availability_group" {
  enabled          = true
  created_by       = "com.dynatrace.extension.sql-server 2.11.5"
  from_type        = "sql:sql_server_availability_replica"
  to_type          = "sql:sql_server_availability_group"
  type_of_relation = "INSTANCE_OF"
  sources {
    source {
      condition   = "$prefix(sql-server)"
      source_type = "Metrics"
    }
  }
}
