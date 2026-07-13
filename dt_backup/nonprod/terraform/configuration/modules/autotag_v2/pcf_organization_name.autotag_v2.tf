resource "dynatrace_autotag_v2" "pcf_organization_name" {
  name                          = "pcf.organization_name"
  description                   = "Name of the Cloud Foundry Organization (usually the EAI #)"
  # rules_maintained_externally = false
  rules {
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "{CloudFoundryOrganization:Name}"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type                 = "SERVICE"
        service_to_host_propagation = false
        service_to_pgpropagation    = false
        conditions {
          condition {
            key      = "CLOUD_FOUNDRY_ORG_NAME"
            operator = "EXISTS"
          }
        }
      }
    }
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "{CloudFoundryOrganization:Name}"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type               = "PROCESS_GROUP"
        pg_to_host_propagation    = false
        pg_to_service_propagation = true
        conditions {
          condition {
            key      = "CLOUD_FOUNDRY_ORG_NAME"
            operator = "EXISTS"
          }
        }
      }
    }
  }
}
