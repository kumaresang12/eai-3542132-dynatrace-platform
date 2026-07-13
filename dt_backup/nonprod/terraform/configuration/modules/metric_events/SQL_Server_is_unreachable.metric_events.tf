resource "dynatrace_metric_events" "SQL_Server_is_unreachable" {
  enabled = false
  summary = "SQL Server is unreachable"
  event_template {
    description = "The {metricname} value of {severity} was {alert_condition} threshold of {threshold}."
    davis_merge = true
    event_type  = "AVAILABILITY"
    title       = "SQL Server is unreachable"
  }
  model_properties {
    type               = "STATIC_THRESHOLD"
    alert_condition    = "BELOW"
    alert_on_no_data   = true
    dealerting_samples = 5
    samples            = 5
    threshold          = 0
    violating_samples  = 5
  }
  query_definition {
    type            = "METRIC_SELECTOR"
    metric_selector = "sql-server.uptime:splitBy(\"dt.entity.sql:sql_server_instance\")"
  }
}
