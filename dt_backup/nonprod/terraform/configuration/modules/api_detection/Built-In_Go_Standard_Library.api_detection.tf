resource "dynatrace_api_detection" "Built-In_Go_Standard_Library" {
  api_color       = "#4fd5e0"
  api_name        = "Built-In Go Standard Library"
  insert_after    = "vu9U3hXa3q0AAAABABxidWlsdGluOmFwaXMuZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkMTc4NzU2NDctNWEyYi0zZjMzLWE0OGQtNTkzYjMwMWYyYTYwvu9U3hXa3q0"
  technology      = "Go"
  third_party_api = true
  conditions {
    condition {
      base    = "PACKAGE"
      matcher = "BEGINS_WITH"
      pattern = "runtime"
    }
    condition {
      base    = "PACKAGE"
      matcher = "BEGINS_WITH"
      pattern = "io"
    }
    condition {
      base    = "PACKAGE"
      matcher = "BEGINS_WITH"
      pattern = "net"
    }
    condition {
      base    = "PACKAGE"
      matcher = "BEGINS_WITH"
      pattern = "os"
    }
    condition {
      base    = "PACKAGE"
      matcher = "BEGINS_WITH"
      pattern = "sync"
    }
  }
}
