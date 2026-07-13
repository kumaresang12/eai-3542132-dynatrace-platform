resource "dynatrace_attribute_allow_list" "db_poolsize_occupied" {
  enabled = true
  key     = "db.poolsize.occupied"
}
