resource "dynatrace_attribute_allow_list" "db_hbase_namespace" {
  enabled = true
  key     = "db.hbase.namespace"
}
