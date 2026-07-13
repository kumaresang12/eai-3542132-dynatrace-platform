resource "dynatrace_api_detection" "Built-In_JBoss" {
  api_color       = "#fff29a"
  api_name        = "Built-In JBoss"
  insert_after    = "vu9U3hXa3q0AAAABABxidWlsdGluOmFwaXMuZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkNGUyYTQ3Y2YtYjVmNC0zN2M2LWI0YjYtMmZlMGU0N2M1NjFjvu9U3hXa3q0"
  technology      = "Java"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "org.jboss."
    }
  }
}
