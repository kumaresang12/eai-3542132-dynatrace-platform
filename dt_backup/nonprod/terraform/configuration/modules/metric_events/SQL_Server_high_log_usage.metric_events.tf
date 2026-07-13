resource "dynatrace_metric_events" "SQL_Server_high_log_usage" {
  enabled = false
  summary = "SQL Server high log usage"
  event_template {
    description   = "The {metricname} value of {severity} was {alert_condition} threshold of {threshold}."
    # davis_merge = false
    event_type    = "CUSTOM_ALERT"
    title         = "SQL Server high log usage"
  }
  model_properties {
    type               = "STATIC_THRESHOLD"
    alert_condition    = "ABOVE"
    alert_on_no_data   = false
    dealerting_samples = 5
    samples            = 5
    threshold          = 95
    violating_samples  = 3
  }
  query_definition {
    type            = "METRIC_SELECTOR"
    metric_selector = "sql-server.databases.log.percentUsed:splitBy(device,database):avg:auto:sort(value(avg,descending)):limit(100)"
  }
}
