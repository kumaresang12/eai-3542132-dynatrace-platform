resource "dynatrace_service_naming" "PCF_Foundation_Space" {
  name    = "PCF:Foundation:Space"
  enabled = true
  format  = "{CloudFoundryOrganization:Name}-{ProcessGroup:CloudFoundryAppName}::{ProcessGroup:Environment:PcfFoundation}::{ProcessGroup:CloudFoundrySpaceName}"
  conditions {
    condition {
      key {
        type      = "STATIC"
        attribute = "CLOUD_FOUNDRY_ORG_NAME"
      }
      string {
        # case_sensitive = false
        # negate         = false
        operator         = "EXISTS"
      }
    }
    condition {
      custom_process_metadata {
        attribute = "PROCESS_GROUP_CUSTOM_METADATA"
        dynamic_key {
          key    = "PcfFoundation"
          source = "ENVIRONMENT"
        }
      }
      string {
        # case_sensitive = false
        # negate         = false
        operator         = "EXISTS"
      }
    }
  }
}
