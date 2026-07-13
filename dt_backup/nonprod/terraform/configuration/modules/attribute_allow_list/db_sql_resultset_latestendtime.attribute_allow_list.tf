resource "dynatrace_attribute_allow_list" "db_sql_resultset_latestendtime" {
  enabled = true
  key     = "db.sql.resultset_latestendtime"
}
