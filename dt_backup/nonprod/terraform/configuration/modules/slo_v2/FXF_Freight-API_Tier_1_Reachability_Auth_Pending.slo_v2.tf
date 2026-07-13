resource "dynatrace_slo_v2" "FXF_Freight-API_Tier_1_Reachability_Auth_Pending" {
  name               = "FXF Freight - API Tier 1 Reachability (Auth Pending)"
  enabled            = true
  custom_description = "8 auth-pending endpoints (relaxed validation, awaiting PING token)"
  evaluation_type    = "AGGREGATE"
  evaluation_window  = "-30d"
  filter             = ""
  metric_expression  =<<-EOT
    builtin:synthetic.http.availability.location.total:filter(in("dt.entity.http_check",entitySelector("entityId(HTTP_CHECK-389EAB2B29D2A04F,HTTP_CHECK-59BA9837EFFD6477,HTTP_CHECK-F0B267437AF4E6FF,HTTP_CHECK-97805A0B5A9BD1CB,HTTP_CHECK-E0B9193B7BEB3CEF,HTTP_CHECK-FB77D2ABC827CDD9,HTTP_CHECK-4AABF51A23D54754,HTTP_CHECK-96A6F04B3E16BAF7)"))):splitBy():avg
  EOT
  metric_name        = "fxf_freight___api_tier_1_reachability__auth_pending_"
  target_success     = 95
  target_warning     = 97
  error_budget_burn_rate {
    burn_rate_visualization_enabled = false
  }
}
