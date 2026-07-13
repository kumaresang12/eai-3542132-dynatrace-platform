resource "dynatrace_generic_relationships" "sql_sql_server_availability_database_RUNS_ON_sql_sql_server_availability_replica" {
  enabled          = true
  created_by       = "com.dynatrace.extension.sql-server 2.11.5"
  from_type        = "sql:sql_server_availability_database"
  to_type          = "sql:sql_server_availability_replica"
  type_of_relation = "RUNS_ON"
  sources {
    source {
      condition   = "$prefix(sql-server.always-on)"
      source_type = "Metrics"
    }
  }
}
