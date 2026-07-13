resource "dynatrace_attribute_allow_list" "graphql_operation_type" {
  enabled = true
  key     = "graphql.operation.type"
}
