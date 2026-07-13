resource "dynatrace_attribute_allow_list" "graphql_operation_name" {
  enabled = true
  key     = "graphql.operation.name"
}
