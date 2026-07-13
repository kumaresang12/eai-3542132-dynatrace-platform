resource "dynatrace_service_splitting" "environment_Built-in_Split_Adobe_Experience_Manager_AEM_services_by_process_group" {
  enabled = true
  scope   = "environment"
  rule {
    condition = "isNotNull(adobe.em.tier) and isNotNull(adobe.em.env_type) and isNotNull(adobe.em.program)"
    rule_name = "[Built-in] Split Adobe Experience Manager (AEM) services by process group"
    service_splitting_attributes {
      service_splitting_attribute {
        key = "dt.entity.process_group"
      }
    }
  }
}
