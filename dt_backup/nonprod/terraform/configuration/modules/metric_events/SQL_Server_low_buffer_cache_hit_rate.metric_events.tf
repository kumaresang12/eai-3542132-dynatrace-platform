resource "dynatrace_metric_events" "SQL_Server_low_buffer_cache_hit_rate" {
  enabled = false
  summary = "SQL Server low buffer cache hit rate"
  event_template {
    description   = "The {metricname} value of {severity} was {alert_condition} threshold of {threshold}."
    # davis_merge = false
    event_type    = "CUSTOM_ALERT"
    title         = "SQL Server low buffer cache hit rate"
  }
  model_properties {
    type               = "STATIC_THRESHOLD"
    alert_condition    = "BELOW"
    alert_on_no_data   = false
    dealerting_samples = 5
    samples            = 5
    threshold          = 80
    violating_samples  = 3
  }
  query_definition {
    type            = "METRIC_SELECTOR"
    metric_selector = "sql-server.buffers.cacheHitRatio:splitBy(device):avg:auto:sort(value(avg,descending)):limit(100)"
  }
}
