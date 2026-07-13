resource "dynatrace_autotag_v2" "cloudops_level_category" {
  name                          = "cloudops.level_category"
  description                   = "CloudOps Level Category"
  # rules_maintained_externally = false
  rules {
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "{Host:Environment:cloudops.level_category}"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type               = "PROCESS_GROUP"
        pg_to_host_propagation    = false
        pg_to_service_propagation = true
        conditions {
          condition {
            dynamic_key        = "cloudops.level_category"
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
      value_format        = "{Host:Environment:cloudops.level_category}"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type           = "HOST"
        host_to_pgpropagation = true
        conditions {
          condition {
            dynamic_key        = "cloudops.level_category"
            dynamic_key_source = "ENVIRONMENT"
            key                = "HOST_CUSTOM_METADATA"
            operator           = "EXISTS"
          }
        }
      }
    }
  }
}
