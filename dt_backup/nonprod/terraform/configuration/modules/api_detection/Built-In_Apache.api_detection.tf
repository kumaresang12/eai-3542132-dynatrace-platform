resource "dynatrace_api_detection" "Built-In_Apache" {
  api_color       = "#2ab6f4"
  api_name        = "Built-In Apache"
  insert_after    = "vu9U3hXa3q0AAAABABxidWlsdGluOmFwaXMuZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkYTExZjRhODAtMTU3Mi0zY2U0LThkMjktYzE0OWRlMjA3YTNmvu9U3hXa3q0"
  technology      = "Java"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "org.apache."
    }
  }
}
