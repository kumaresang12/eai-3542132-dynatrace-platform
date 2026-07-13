resource "dynatrace_attribute_allow_list" "db_topology" {
  enabled = true
  key     = "db.topology"
}
