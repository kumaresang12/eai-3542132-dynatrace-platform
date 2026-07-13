resource "dynatrace_attribute_allow_list" "db_user" {
  enabled = true
  key     = "db.user"
}
