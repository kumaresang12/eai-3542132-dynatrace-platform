resource "dynatrace_api_detection" "Built-In_NET_Azure_Service_Fabric" {
  api_color       = "#fff29a"
  api_name        = "Built-In .NET Azure Service Fabric"
  insert_after    = "vu9U3hXa3q0AAAABABxidWlsdGluOmFwaXMuZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkOWIwODQ0YjctNzI2Yy0zNDVhLWI3Y2EtYWYwYTViNDUxMzEyvu9U3hXa3q0"
  technology      = "dotNet"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "Microsoft.ServiceFabric."
    }
  }
}
