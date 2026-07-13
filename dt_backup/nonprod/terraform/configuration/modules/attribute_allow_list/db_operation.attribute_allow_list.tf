resource "dynatrace_attribute_allow_list" "db_operation" {
  enabled = true
  key     = "db.operation"
}
