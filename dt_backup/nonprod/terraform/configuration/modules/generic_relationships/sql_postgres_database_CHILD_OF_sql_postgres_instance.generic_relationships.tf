resource "dynatrace_generic_relationships" "sql_postgres_database_CHILD_OF_sql_postgres_instance" {
  enabled          = true
  created_by       = "com.dynatrace.extension.postgres 2.9.7"
  from_type        = "sql:postgres_database"
  to_type          = "sql:postgres_instance"
  type_of_relation = "CHILD_OF"
  sources {
    source {
      condition   = "$prefix(postgres)"
      source_type = "Metrics"
    }
  }
}
