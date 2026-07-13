resource "dynatrace_process_grouping_rules" "process_grouping_rules_1" {
  enabled                = true
  custom_technology_name = "Cloud Foundry App"
  insert_after           = "vu9U3hXa3q0AAAABAB5idWlsdGluOnByb2Nlc3MtZ3JvdXBpbmctcnVsZXMABEhPU1QAEDYzRURCOTEyNTMxN0Y2RjMAJGIwYTEzNWIyLTkwMWEtM2NkZi04ZTFiLTVhMGJiMDIxZGNiN77vVN4V2t6t"
  scope                  = "environment"
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
      pgi_id_source {
      }
    }
  }
}
