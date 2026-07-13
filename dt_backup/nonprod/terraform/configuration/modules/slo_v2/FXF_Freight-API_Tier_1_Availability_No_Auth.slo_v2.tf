resource "dynatrace_slo_v2" "FXF_Freight-API_Tier_1_Availability_No_Auth" {
  name               = "FXF Freight - API Tier 1 Availability (No Auth)"
  enabled            = true
  custom_description = "5 no-auth API endpoints on api-qa.ltl.tech"
  evaluation_type    = "AGGREGATE"
  evaluation_window  = "-30d"
  filter             = ""
  metric_expression  =<<-EOT
    builtin:synthetic.http.availability.location.total:filter(in("dt.entity.http_check",entitySelector("entityId(HTTP_CHECK-E1D1FAC602697146,HTTP_CHECK-71BCE75534526CA8,HTTP_CHECK-A54935A3822ACF27,HTTP_CHECK-632D4E158A7A3441,HTTP_CHECK-6C969ACD4065FD75)"))):splitBy():avg
  EOT
  metric_name        = "fxf_freight___api_tier_1_availability__no_auth_"
  target_success     = 99.5
  target_warning     = 99.8
  error_budget_burn_rate {
    burn_rate_visualization_enabled = false
  }
}
