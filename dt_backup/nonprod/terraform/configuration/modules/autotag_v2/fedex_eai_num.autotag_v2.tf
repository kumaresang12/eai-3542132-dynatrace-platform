resource "dynatrace_autotag_v2" "fedex_eai_num" {
  name                          = "fedex.eai_num"
  description                   = "Enterprise Application ID identified business applications and services"
  # rules_maintained_externally = false
  rules {
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "{ProcessGroup:Environment:fedex.eai_num}"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type               = "PROCESS_GROUP"
        pg_to_host_propagation    = false
        pg_to_service_propagation = true
        conditions {
          condition {
            dynamic_key        = "fedex.eai_num"
            dynamic_key_source = "ENVIRONMENT"
            key                = "PROCESS_GROUP_CUSTOM_METADATA"
            operator           = "EXISTS"
          }
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
      value_format        = "{ProcessGroup:Environment:fedex.eai_num}"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type               = "PROCESS_GROUP"
        pg_to_host_propagation    = true
        pg_to_service_propagation = true
        conditions {
          condition {
            key      = "CLOUD_FOUNDRY_ORG_NAME"
            operator = "NOT_EXISTS"
          }
          condition {
            dynamic_key        = "fedex.eai_num"
            dynamic_key_source = "ENVIRONMENT"
            key                = "PROCESS_GROUP_CUSTOM_METADATA"
            operator           = "EXISTS"
          }
        }
      }
    }
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "{ProcessGroup:Environment:EAI}"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type               = "PROCESS_GROUP"
        pg_to_host_propagation    = false
        pg_to_service_propagation = true
        conditions {
          condition {
            dynamic_key        = "EAI"
            dynamic_key_source = "ENVIRONMENT"
            key                = "PROCESS_GROUP_CUSTOM_METADATA"
            operator           = "EXISTS"
          }
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
      value_format        = "{ProcessGroup:Environment:EAI}"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type               = "PROCESS_GROUP"
        pg_to_host_propagation    = true
        pg_to_service_propagation = true
        conditions {
          condition {
            dynamic_key        = "EAI"
            dynamic_key_source = "ENVIRONMENT"
            key                = "PROCESS_GROUP_CUSTOM_METADATA"
            operator           = "EXISTS"
          }
          condition {
            key      = "CLOUD_FOUNDRY_ORG_NAME"
            operator = "NOT_EXISTS"
          }
        }
      }
    }
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "{Host:Environment:fedex.eai_num}"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type               = "PROCESS_GROUP"
        pg_to_host_propagation    = true
        pg_to_service_propagation = true
        conditions {
          condition {
            key      = "HOST_BOSH_INSTANCE_ID"
            operator = "NOT_EXISTS"
          }
          condition {
            dynamic_key        = "fedex.eai_num"
            dynamic_key_source = "ENVIRONMENT"
            key                = "PROCESS_GROUP_CUSTOM_METADATA"
            operator           = "EXISTS"
          }
        }
      }
    }
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "{Host:Environment:EAI}"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type               = "PROCESS_GROUP"
        pg_to_host_propagation    = true
        pg_to_service_propagation = true
        conditions {
          condition {
            dynamic_key        = "EAI"
            dynamic_key_source = "ENVIRONMENT"
            key                = "HOST_CUSTOM_METADATA"
            operator           = "EXISTS"
          }
          condition {
            key      = "HOST_BOSH_INSTANCE_ID"
            operator = "NOT_EXISTS"
          }
        }
      }
    }
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "{Host:Environment:fedex.eai_num}"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type           = "HOST"
        host_to_pgpropagation = false
        conditions {
          condition {
            dynamic_key        = "fedex.eai_num"
            dynamic_key_source = "ENVIRONMENT"
            key                = "HOST_CUSTOM_METADATA"
            operator           = "EXISTS"
          }
          condition {
            key      = "HOST_BOSH_INSTANCE_ID"
            operator = "EXISTS"
          }
        }
      }
    }
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "{Host:Environment:EAI}"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type           = "HOST"
        host_to_pgpropagation = false
        conditions {
          condition {
            dynamic_key        = "EAI"
            dynamic_key_source = "ENVIRONMENT"
            key                = "HOST_CUSTOM_METADATA"
            operator           = "EXISTS"
          }
          condition {
            key      = "HOST_BOSH_INSTANCE_ID"
            operator = "EXISTS"
          }
        }
      }
    }
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "{Host:Environment:fdxfct_eai}"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type               = "PROCESS_GROUP"
        pg_to_host_propagation    = true
        pg_to_service_propagation = true
        conditions {
          condition {
            dynamic_key        = "fdxfct_eai"
            dynamic_key_source = "ENVIRONMENT"
            key                = "HOST_CUSTOM_METADATA"
            operator           = "EXISTS"
          }
        }
      }
    }
  }
}
