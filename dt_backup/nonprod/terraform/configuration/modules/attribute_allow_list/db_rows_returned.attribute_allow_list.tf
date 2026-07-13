resource "dynatrace_attribute_allow_list" "db_rows_returned" {
  enabled = true
  key     = "db.rows_returned"
}
