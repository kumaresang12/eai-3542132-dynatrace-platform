resource "dynatrace_autotag_v2" "cloudops_contract_key" {
  name                          = "cloudops.contract_key"
  description                   = "CloudOps Contract Key"
  # rules_maintained_externally = false
  rules {
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "{Host:Environment:cloudops.contract_key}"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type               = "PROCESS_GROUP"
        pg_to_host_propagation    = false
        pg_to_service_propagation = true
        conditions {
          condition {
            dynamic_key        = "cloudops.contract_key"
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
      value_format        = "{Host:Environment:cloudops.contract_key}"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type           = "HOST"
        host_to_pgpropagation = true
        conditions {
          condition {
            dynamic_key        = "cloudops.contract_key"
            dynamic_key_source = "ENVIRONMENT"
            key                = "HOST_CUSTOM_METADATA"
            operator           = "EXISTS"
          }
        }
      }
    }
  }
}
