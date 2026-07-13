resource "dynatrace_autotag_v2" "pcf_space_name" {
  name                          = "pcf.space_name"
  description                   = "Name of the Cloud Foundry Organization (usually the EAI #)"
  # rules_maintained_externally = false
  rules {
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "{ProcessGroup:CloudFoundrySpaceName}"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type                 = "SERVICE"
        service_to_host_propagation = false
        service_to_pgpropagation    = false
        conditions {
          condition {
            dynamic_key = "CLOUD_FOUNDRY_SPACE_NAME"
            key         = "PROCESS_GROUP_PREDEFINED_METADATA"
            operator    = "EXISTS"
          }
        }
      }
    }
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "{ProcessGroup:CloudFoundrySpaceName}"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type               = "PROCESS_GROUP"
        pg_to_host_propagation    = false
        pg_to_service_propagation = false
        conditions {
          condition {
            dynamic_key = "CLOUD_FOUNDRY_SPACE_NAME"
            key         = "PROCESS_GROUP_PREDEFINED_METADATA"
            operator    = "EXISTS"
          }
        }
      }
    }
  }
}
