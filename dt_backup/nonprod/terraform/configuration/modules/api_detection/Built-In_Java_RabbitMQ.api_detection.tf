resource "dynatrace_api_detection" "Built-In_Java_RabbitMQ" {
  api_color       = "#aeebf0"
  api_name        = "Built-In Java RabbitMQ"
  insert_after    = "vu9U3hXa3q0AAAABABxidWlsdGluOmFwaXMuZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkOGMzMjE0NmMtMDU3ZS0zMWQyLWExMGQtMDQxNWVkYTRjODczvu9U3hXa3q0"
  technology      = "Java"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "com.rabbitmq."
    }
  }
}
