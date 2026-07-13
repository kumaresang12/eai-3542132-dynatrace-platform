resource "dynatrace_slo_v2" "_TEST_DELETE_ME_entitySelector_in" {
  name               = "_TEST_DELETE_ME_entitySelector_in"
  enabled            = false
  custom_description = "test - will delete immediately"
  evaluation_type    = "AGGREGATE"
  evaluation_window  = "-30d"
  filter             = ""
  metric_expression  =<<-EOT
    builtin:synthetic.http.availability.location.total:filter(in("dt.entity.http_check",entitySelector("entityId(HTTP_CHECK-96A6F04B3E16BAF7)"))):splitBy():avg
  EOT
  metric_name        = "_test_delete_me_entityselector_in"
  target_success     = 99.5
  target_warning     = 99.8
  error_budget_burn_rate {
    burn_rate_visualization_enabled = false
  }
}
