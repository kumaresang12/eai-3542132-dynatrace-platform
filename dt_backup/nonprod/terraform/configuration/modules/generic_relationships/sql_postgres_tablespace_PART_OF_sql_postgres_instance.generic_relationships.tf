resource "dynatrace_generic_relationships" "sql_postgres_tablespace_PART_OF_sql_postgres_instance" {
  enabled          = true
  created_by       = "com.dynatrace.extension.postgres 2.9.7"
  from_type        = "sql:postgres_tablespace"
  to_type          = "sql:postgres_instance"
  type_of_relation = "PART_OF"
  sources {
    source {
      condition   = "$prefix(postgres)"
      source_type = "Metrics"
    }
  }
}
