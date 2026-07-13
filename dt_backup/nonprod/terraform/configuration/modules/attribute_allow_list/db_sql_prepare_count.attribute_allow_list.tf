resource "dynatrace_attribute_allow_list" "db_sql_prepare_count" {
  enabled = true
  key     = "db.sql.prepare_count"
}
