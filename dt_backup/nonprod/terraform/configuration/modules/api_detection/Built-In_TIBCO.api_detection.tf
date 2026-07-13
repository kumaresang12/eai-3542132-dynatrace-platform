resource "dynatrace_api_detection" "Built-In_TIBCO" {
  api_color       = "#a972cc"
  api_name        = "Built-In TIBCO"
  insert_after    = "vu9U3hXa3q0AAAABABxidWlsdGluOmFwaXMuZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkYTRhYWEwM2YtMTAyMC0zZDIzLWI5NGItMzE5NjY0MWZmZjRhvu9U3hXa3q0"
  technology      = "Java"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "org.tibco."
    }
  }
}
