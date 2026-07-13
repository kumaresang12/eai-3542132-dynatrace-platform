resource "dynatrace_attribute_allow_list" "db_result_duration_min" {
  enabled = true
  key     = "db.result.duration_min"
}
