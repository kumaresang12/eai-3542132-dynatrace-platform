resource "dynatrace_attribute_allow_list" "db_connection_string" {
  enabled = true
  key     = "db.connection_string"
}
