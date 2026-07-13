resource "dynatrace_attribute_allow_list" "db_mssql_instance_name" {
  enabled = true
  key     = "db.mssql.instance_name"
}
