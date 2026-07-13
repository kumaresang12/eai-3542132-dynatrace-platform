resource "dynatrace_attribute_allow_list" "graphql_operation_resolver_call_tracked" {
  enabled = true
  key     = "graphql.operation.resolver_call_tracked"
}
