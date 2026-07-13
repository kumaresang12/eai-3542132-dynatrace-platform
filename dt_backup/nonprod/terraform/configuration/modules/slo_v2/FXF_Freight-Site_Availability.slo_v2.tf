resource "dynatrace_slo_v2" "FXF_Freight-Site_Availability" {
  name               = "FXF Freight - Site Availability"
  enabled            = true
  custom_description = "wwwtest.fedexfreight.com login page availability"
  evaluation_type    = "AGGREGATE"
  evaluation_window  = "-30d"
  filter             = ""
  metric_expression  = "builtin:synthetic.http.availability.location.total:filter(eq(dt.entity.http_check,HTTP_CHECK-E537F42A96E7F85F)):splitBy():avg"
  metric_name        = "fxf_freight___site_availability"
  target_success     = 99.5
  target_warning     = 99.8
  error_budget_burn_rate {
    burn_rate_visualization_enabled = false
  }
}
