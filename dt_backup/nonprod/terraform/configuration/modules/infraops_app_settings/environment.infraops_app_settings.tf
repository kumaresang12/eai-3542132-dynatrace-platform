resource "dynatrace_infraops_app_settings" "environment" {
  interface_saturation_threshold = 0.95
  invex_dql_query_limit          = 1000
  show_monitoring_candidates     = false
  show_standalone_hosts          = false
}
