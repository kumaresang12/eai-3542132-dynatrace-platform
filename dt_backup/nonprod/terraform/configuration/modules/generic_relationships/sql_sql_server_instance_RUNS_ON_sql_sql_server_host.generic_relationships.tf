resource "dynatrace_generic_relationships" "sql_sql_server_instance_RUNS_ON_sql_sql_server_host" {
  enabled          = true
  created_by       = "com.dynatrace.extension.sql-server 2.11.5"
  from_type        = "sql:sql_server_instance"
  to_type          = "sql:sql_server_host"
  type_of_relation = "RUNS_ON"
  sources {
    source {
      condition   = "$prefix(sql-server)"
      source_type = "Metrics"
    }
  }
}
