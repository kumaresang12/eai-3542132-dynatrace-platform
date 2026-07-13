resource "dynatrace_attribute_allow_list" "db_result_roundtrip_count" {
  enabled = true
  key     = "db.result.roundtrip_count"
}
