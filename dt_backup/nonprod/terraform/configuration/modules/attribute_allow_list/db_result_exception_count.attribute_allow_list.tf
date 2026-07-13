resource "dynatrace_attribute_allow_list" "db_result_exception_count" {
  enabled = true
  key     = "db.result.exception_count"
}
