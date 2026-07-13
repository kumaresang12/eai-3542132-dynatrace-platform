resource "dynatrace_attribute_allow_list" "db_system" {
  enabled = true
  key     = "db.system"
}
