resource "dynatrace_process_grouping_rules" "process_grouping_rules" {
  enabled      = true
  insert_after = ""
  scope        = "HOST-63EDB9125317F6F3"
  pg_extraction {
    process_group_extraction {
      report = "always"
      detection {
        detection_condition {
          case_sensitive = false
          condition      = "$eq(OpsLocationService)"
          property       = "CLOUD_FOUNDRY_APP_NAME"
        }
      }
      pg_id_source {
        type            = "EXISTING"
        property        = "CLOUD_FOUNDRY_APP_NAME"
        standalone_rule = true
      }
    }
  }
}
