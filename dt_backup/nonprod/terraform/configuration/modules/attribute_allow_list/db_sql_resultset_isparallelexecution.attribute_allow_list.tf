resource "dynatrace_attribute_allow_list" "db_sql_resultset_isparallelexecution" {
  enabled = true
  key     = "db.sql.resultset_isparallelexecution"
}
