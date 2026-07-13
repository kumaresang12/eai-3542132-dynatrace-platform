resource "dynatrace_attribute_allow_list" "db_operation_name" {
  enabled = true
  key     = "db.operation.name"
}
