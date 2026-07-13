resource "dynatrace_process_monitoring_rule" "environment_COMMAND_LINE_ARGS_CONTAINS_service_config_nginx_conf" {
  enabled       = true
  host_group_id = "environment"
  insert_after  = ""
  mode          = "MONITORING_OFF"
  condition {
    item     = "COMMAND_LINE_ARGS"
    operator = "CONTAINS"
    value    = "service/config/nginx.conf"
  }
}
