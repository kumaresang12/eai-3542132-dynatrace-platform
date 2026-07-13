resource "dynatrace_attribute_allow_list" "db_sql_resultset_count" {
  enabled = true
  key     = "db.sql.resultset_count"
}
