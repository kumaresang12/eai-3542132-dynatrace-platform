resource "dynatrace_generic_relationships" "sql_sql_server_database_CHILD_OF_sql_sql_server_instance" {
  enabled          = true
  created_by       = "com.dynatrace.extension.sql-server 2.11.5"
  from_type        = "sql:sql_server_database"
  to_type          = "sql:sql_server_instance"
  type_of_relation = "CHILD_OF"
  sources {
    source {
      condition   = "$prefix(sql-server)"
      source_type = "Metrics"
    }
  }
}
