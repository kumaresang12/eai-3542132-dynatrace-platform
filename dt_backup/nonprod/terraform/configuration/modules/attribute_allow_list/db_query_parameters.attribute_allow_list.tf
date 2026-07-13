resource "dynatrace_attribute_allow_list" "db_query_parameters" {
  enabled = true
  key     = "db.query.parameters"
}
