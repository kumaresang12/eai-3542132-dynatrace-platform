resource "dynatrace_attribute_allow_list" "db_resultset_fetch_size" {
  enabled = true
  key     = "db.resultset_fetch_size"
}
