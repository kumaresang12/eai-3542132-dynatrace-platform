resource "dynatrace_metric_events" "Postgres_Instance_in_recovery_state" {
  enabled = false
  summary = "Postgres Instance in recovery state"
  event_template {
    description   = "The {metricname} value was {alert_condition} normal behavior. Dimensions: {dims}"
    # davis_merge = false
    event_type    = "CUSTOM_ALERT"
    title         = "Postgres Instance in recovery state"
  }
  model_properties {
    type               = "STATIC_THRESHOLD"
    alert_condition    = "ABOVE"
    alert_on_no_data   = false
    dealerting_samples = 5
    samples            = 5
    threshold          = 0
    violating_samples  = 3
  }
  query_definition {
    type            = "METRIC_SELECTOR"
    metric_selector = "postgres.recovery.state:splitBy(\"dt.entity.sql:postgres_instance\")"
  }
}
