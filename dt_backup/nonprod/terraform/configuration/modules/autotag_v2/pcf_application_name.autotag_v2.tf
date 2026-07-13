resource "dynatrace_autotag_v2" "pcf_application_name" {
  name                          = "pcf.application_name"
  description                   = "Cloud Foundry Application Name"
  # rules_maintained_externally = false
  rules {
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "{ProcessGroup:CloudFoundryAppName}"
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
      value_format        = "{ProcessGroup:CloudFoundryAppName}"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type               = "PROCESS_GROUP"
        pg_to_host_propagation    = false
        pg_to_service_propagation = false
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
