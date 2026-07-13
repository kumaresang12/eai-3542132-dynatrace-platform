resource "dynatrace_metric_events" "Postgres_Instance_is_unreachable" {
  enabled = false
  summary = "Postgres Instance is unreachable"
  event_template {
    description = "The {metricname} value was {alert_condition} normal behavior."
    davis_merge = true
    event_type  = "AVAILABILITY"
    title       = "Postgres Instance is unreachable"
  }
  model_properties {
    type               = "STATIC_THRESHOLD"
    alert_condition    = "BELOW"
    alert_on_no_data   = true
    dealerting_samples = 5
    samples            = 5
    threshold          = 30
    violating_samples  = 5
  }
  query_definition {
    type            = "METRIC_SELECTOR"
    metric_selector = "postgres.uptime:splitBy(\"dt.entity.sql:postgres_instance\"):min"
  }
}
