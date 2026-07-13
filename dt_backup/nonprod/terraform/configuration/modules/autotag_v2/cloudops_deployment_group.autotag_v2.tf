resource "dynatrace_autotag_v2" "cloudops_deployment_group" {
  name                          = "cloudops.deployment_group"
  description                   = "CloudOps Deployment Group"
  # rules_maintained_externally = false
  rules {
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "{Host:Environment:cloudops.deployment_group}"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type               = "PROCESS_GROUP"
        pg_to_host_propagation    = false
        pg_to_service_propagation = true
        conditions {
          condition {
            dynamic_key        = "cloudops.deployment_group"
            dynamic_key_source = "ENVIRONMENT"
            key                = "HOST_CUSTOM_METADATA"
            operator           = "EXISTS"
          }
        }
      }
    }
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "{Host:Environment:cloudops.deployment_group}"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type           = "HOST"
        host_to_pgpropagation = true
        conditions {
          condition {
            dynamic_key        = "cloudops.deployment_group"
            dynamic_key_source = "ENVIRONMENT"
            key                = "HOST_CUSTOM_METADATA"
            operator           = "EXISTS"
          }
        }
      }
    }
  }
}
