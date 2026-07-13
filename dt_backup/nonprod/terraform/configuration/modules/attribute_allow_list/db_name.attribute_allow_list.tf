resource "dynatrace_attribute_allow_list" "db_name" {
  enabled = true
  key     = "db.name"
}
