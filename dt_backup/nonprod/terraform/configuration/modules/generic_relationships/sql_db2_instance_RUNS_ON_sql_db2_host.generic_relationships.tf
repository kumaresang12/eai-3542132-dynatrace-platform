resource "dynatrace_generic_relationships" "sql_db2_instance_RUNS_ON_sql_db2_host" {
  enabled          = true
  created_by       = "com.dynatrace.extension.sql-db2 2.5.0"
  from_type        = "sql:db2_instance"
  to_type          = "sql:db2_host"
  type_of_relation = "RUNS_ON"
  sources {
    source {
      condition   = "$prefix(db2)"
      source_type = "Metrics"
    }
    source {
      source_type = "Logs"
    }
  }
}
