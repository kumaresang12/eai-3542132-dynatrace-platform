resource "dynatrace_autotag_v2" "PcfAppName" {
  name                          = "PcfAppName"
  description                   = "CF App Name"
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
            case_sensitive = true
            key            = "HOST_GROUP_NAME"
            operator       = "EQUALS"
            string_value   = "pcf.wtcdev5"
          }
        }
      }
    }
  }
}
