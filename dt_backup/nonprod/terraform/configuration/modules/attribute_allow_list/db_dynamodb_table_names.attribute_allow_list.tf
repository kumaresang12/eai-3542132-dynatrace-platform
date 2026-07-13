resource "dynatrace_attribute_allow_list" "db_dynamodb_table_names" {
  enabled = true
  key     = "db.dynamodb.table_names"
}
