resource "dynatrace_api_detection" "Built-In_Java_tests" {
  api_color       = "#008cdb"
  api_name        = "Built-In Java tests"
  insert_after    = "vu9U3hXa3q0AAAABABxidWlsdGluOmFwaXMuZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkYjQwZDJlOTMtOWJkZS0zMDM4LTllZDAtODhlMWFhMmU1MjQ2vu9U3hXa3q0"
  technology      = "Java"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "junit.framework."
    }
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "org.junit."
    }
  }
}
