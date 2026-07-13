resource "dynatrace_attribute_allow_list" "db_poolsize" {
  enabled = true
  key     = "db.poolsize"
}
