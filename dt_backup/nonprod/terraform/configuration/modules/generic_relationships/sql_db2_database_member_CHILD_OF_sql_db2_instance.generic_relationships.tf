resource "dynatrace_generic_relationships" "sql_db2_database_member_CHILD_OF_sql_db2_instance" {
  enabled          = true
  created_by       = "com.dynatrace.extension.sql-db2 2.5.0"
  from_type        = "sql:db2_database_member"
  to_type          = "sql:db2_instance"
  type_of_relation = "CHILD_OF"
  sources {
    source {
      condition   = "$prefix(db2)"
      source_type = "Metrics"
    }
  }
}
