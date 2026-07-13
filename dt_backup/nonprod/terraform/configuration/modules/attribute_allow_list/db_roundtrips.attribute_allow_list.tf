resource "dynatrace_attribute_allow_list" "db_roundtrips" {
  enabled = true
  key     = "db.roundtrips"
}
