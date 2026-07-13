resource "dynatrace_api_detection" "Built-In_Java_IBM_MQ" {
  api_color       = "#ffd0ab"
  api_name        = "Built-In Java IBM MQ"
  insert_after    = "vu9U3hXa3q0AAAABABxidWlsdGluOmFwaXMuZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkMWJlYWVlY2EtMjc3MS0zNDkwLTg2NTEtZGE2NDU2ZDMxYzZkvu9U3hXa3q0"
  technology      = "Java"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "com.ibm.mq."
    }
  }
}
