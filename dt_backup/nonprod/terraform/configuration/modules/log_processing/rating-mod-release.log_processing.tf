resource "dynatrace_log_processing" "rating-mod-release" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABACNidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLWRwcC1ydWxlcwAGdGVuYW50AAZ0ZW5hbnQAJGM1ODQxMTJmLTk1MWUtNDRkNC1hNjg3LTg4MmMyYmEyZDhlMr7vVN4V2t6t"
  query        =<<-EOT
    cf_space_name == "release"
    and source_type == "APP/REV/1/PROC/WEB"
    and (
      cf_app_name == "DimRatingService"
      or cf_app_name == "FXFBaseRateService"
      or cf_app_name == "FXFRatingPathOrchestrator"
      or cf_app_name == "FXFRatingPathOrchestratorJMS"
      or cf_app_name == "FXFRatingRulesOrchestrator"
      or cf_app_name == "FXFRatingRulesOrchestratorJMS"
      or cf_app_name == "FxfLegacyDataAcquisitionConfigServer"
      or cf_app_name == "FxfLegacyDataAcquisitionEast"
      or cf_app_name == "FxfLegacyDataAcquisitionWest"
      or cf_app_name == "FxfRatingComparator"
      or cf_app_name == "FxfRatingGateway"
      or cf_app_name == "FxfRatingGatewayJMS"
    )
  EOT
  rule_name    = "rating-mod-release"
  processor_definition {
    rule = "FIELDS_ADD(fedex_rule_probe: \"rating-processing-v2\")"
  }
  rule_testing {
    sample_log = jsonencode({
          "cf_app_name": "FxfRatingGatewayJMS",
          "cf_space_name": "release",
          "content": "test FxfRatingGatewayJMS",
          "source_type": "APP/REV/1/PROC/WEB"
      })
  }
}
