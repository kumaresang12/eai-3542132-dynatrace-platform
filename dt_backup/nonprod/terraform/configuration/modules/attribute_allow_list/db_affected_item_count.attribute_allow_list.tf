resource "dynatrace_attribute_allow_list" "db_affected_item_count" {
  enabled = true
  key     = "db.affected_item_count"
}
