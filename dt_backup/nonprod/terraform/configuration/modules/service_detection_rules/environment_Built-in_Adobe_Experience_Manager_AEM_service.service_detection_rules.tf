resource "dynatrace_service_detection_rules" "environment_Built-in_Adobe_Experience_Manager_AEM_service" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABAB9idWlsdGluOnNlcnZpY2UtZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkMDk0MzUwMjYtYTY5Zi00Y2RiLTk4OWEtNWVmOTIxZTY5ZmVmvu9U3hXa3q0"
  scope        = "environment"
  rule {
    condition             = "isNotNull(adobe.em.tier) and isNotNull(adobe.em.env_type) and isNotNull(adobe.em.program)"
    rule_name             = "[Built-in] Adobe Experience Manager (AEM) service"
    service_name_template = "aem-{adobe.em.tier}-{adobe.em.env_type}-{adobe.em.program}"
  }
}
