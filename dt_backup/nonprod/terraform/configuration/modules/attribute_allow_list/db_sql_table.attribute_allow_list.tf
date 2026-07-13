resource "dynatrace_attribute_allow_list" "db_sql_table" {
  enabled = true
  key     = "db.sql.table"
}
