resource "dynatrace_generic_relationships" "sql_postgres_instance_RUNS_ON_sql_postgres_host" {
  enabled          = true
  created_by       = "com.dynatrace.extension.postgres 2.9.7"
  from_type        = "sql:postgres_instance"
  to_type          = "sql:postgres_host"
  type_of_relation = "RUNS_ON"
  sources {
    source {
      condition   = "$prefix(postgres)"
      source_type = "Metrics"
    }
  }
}
