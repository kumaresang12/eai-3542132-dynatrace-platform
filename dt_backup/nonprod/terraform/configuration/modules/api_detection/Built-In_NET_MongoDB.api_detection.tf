resource "dynatrace_api_detection" "Built-In_NET_MongoDB" {
  api_color       = "#fff29a"
  api_name        = "Built-In .NET MongoDB"
  insert_after    = "vu9U3hXa3q0AAAABABxidWlsdGluOmFwaXMuZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkZGMyNDYyNDQtZGU3OS0zMDdhLTljMzQtYWMxYmFkNWUzODMwvu9U3hXa3q0"
  technology      = "dotNet"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "MongoDB."
    }
  }
}
