resource "dynatrace_service_splitting" "environment_Built-in_Split_services_by_host_group_and_primary_cloud_fields" {
  enabled      = false
  insert_after = "vu9U3hXa3q0AAAABAB9idWlsdGluOnNlcnZpY2Utc3BsaXR0aW5nLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkZGJkNWM5NjAtMzQ0Yi00ODFlLTk0NTYtYjFmYjRkMDg1YTFmvu9U3hXa3q0"
  scope        = "environment"
  rule {
    condition =<<-EOT
      isNotNull(aws.account.id) 
      or isNotNull(aws.region) 
      or isNotNull(azure.location) 
      or isNotNull(azure.resource.group) 
      or isNotNull(azure.subscription) 
      or isNotNull(dt.host_group.id) 
      or isNotNull(gcp.project.id) 
      or isNotNull(gcp.region)
    EOT
    rule_name = "[Built-in] Split services by host group and primary cloud fields"
    service_splitting_attributes {
      service_splitting_attribute {
        key = "dt.host_group.id"
      }
      service_splitting_attribute {
        key = "aws.account.id"
      }
      service_splitting_attribute {
        key = "aws.region"
      }
      service_splitting_attribute {
        key = "azure.subscription"
      }
      service_splitting_attribute {
        key = "azure.resource.group"
      }
      service_splitting_attribute {
        key = "azure.location"
      }
      service_splitting_attribute {
        key = "gcp.project.id"
      }
      service_splitting_attribute {
        key = "gcp.region"
      }
    }
  }
}
