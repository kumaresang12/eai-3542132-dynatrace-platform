resource "dynatrace_attribute_allow_list" "db_jdbc_driver_classname" {
  enabled = true
  key     = "db.jdbc.driver_classname"
}
