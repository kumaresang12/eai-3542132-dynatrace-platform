resource "dynatrace_autotag_v2" "pcf_foundation" {
  name                          = "pcf.foundation"
  description                   = "Name of the Cloud Foundry Foundation"
  # rules_maintained_externally = false
  rules {
    rule {
      type                = "ME"
      enabled             = false
      value_format        = "{ProcessGroup:Environment:PcfFoundation}"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type                 = "SERVICE"
        service_to_host_propagation = false
        service_to_pgpropagation    = false
        conditions {
          condition {
            dynamic_key        = "PcfFoundation"
            dynamic_key_source = "ENVIRONMENT"
            key                = "HOST_CUSTOM_METADATA"
            operator           = "EXISTS"
          }
        }
      }
    }
    rule {
      type                = "ME"
      enabled             = false
      value_format        = "{ProcessGroup:Environment:pcf.foundation}"
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
      enabled             = false
      value_format        = "{ProcessGroup:Environment:PcfFoundation}"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type               = "PROCESS_GROUP"
        pg_to_host_propagation    = false
        pg_to_service_propagation = true
        conditions {
          condition {
            dynamic_key        = "PcfFoundation"
            dynamic_key_source = "ENVIRONMENT"
            key                = "HOST_CUSTOM_METADATA"
            operator           = "EXISTS"
          }
        }
      }
    }
    rule {
      type                = "ME"
      enabled             = false
      value_format        = "{Host:Environment:PcfFoundation}"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type           = "HOST"
        host_to_pgpropagation = true
        conditions {
          condition {
            dynamic_key        = "PcfFoundation"
            dynamic_key_source = "ENVIRONMENT"
            key                = "HOST_CUSTOM_METADATA"
            operator           = "EXISTS"
          }
        }
      }
    }
    rule {
      type                = "ME"
      enabled             = false
      value_format        = "{Host:Environment:pcf.foundation}"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type           = "HOST"
        host_to_pgpropagation = true
        conditions {
          condition {
            dynamic_key        = "pcf.foundation"
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
      value_format        = "{HostGroup:Name}"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type               = "PROCESS_GROUP"
        pg_to_host_propagation    = true
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
