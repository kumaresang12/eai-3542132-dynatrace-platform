resource "dynatrace_attribute_allow_list" "db_result_execution_count" {
  enabled = true
  key     = "db.result.execution_count"
}
