resource "dynatrace_attribute_allow_list" "db_statement" {
  enabled = true
  key     = "db.statement"
}
