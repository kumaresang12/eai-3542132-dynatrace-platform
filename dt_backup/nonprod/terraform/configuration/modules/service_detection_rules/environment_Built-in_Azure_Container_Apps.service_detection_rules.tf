resource "dynatrace_service_detection_rules" "environment_Built-in_Azure_Container_Apps" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABAB9idWlsdGluOnNlcnZpY2UtZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkMGZkM2M0MWUtYTkwZS00Mjk5LWExZjktMDMwZTYwMmVmYzg2vu9U3hXa3q0"
  scope        = "environment"
  rule {
    condition             = "isNotNull(azure.container_app.name)"
    rule_name             = "[Built-in] Azure Container Apps"
    service_name_template = "{azure.container_app.name}"
  }
}
