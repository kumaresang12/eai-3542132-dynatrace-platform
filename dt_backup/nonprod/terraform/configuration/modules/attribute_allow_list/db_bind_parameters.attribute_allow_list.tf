resource "dynatrace_attribute_allow_list" "db_bind_parameters" {
  enabled = true
  key     = "db.bind.parameters"
}
