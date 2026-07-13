resource "dynatrace_attribute_allow_list" "db_sql_prepare_isparallelexecution" {
  enabled = true
  key     = "db.sql.prepare_isparallelexecution"
}
