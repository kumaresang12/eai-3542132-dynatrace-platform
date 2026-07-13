resource "dynatrace_metric_events" "Active_Directory-Replication_Consistency" {
  enabled = false
  summary = "Active Directory - Replication Consistency"
  event_template {
    description = "The {metricname} value of {severity} was {alert_condition} your custom threshold of {threshold}."
    davis_merge = true
    event_type  = "RESOURCE"
    title       = "Active Directory - Replication Consistency"
  }
  model_properties {
    type               = "STATIC_THRESHOLD"
    alert_condition    = "BELOW"
    alert_on_no_data   = false
    dealerting_samples = 5
    samples            = 5
    threshold          = 1
    violating_samples  = 2
  }
  query_definition {
    type            = "METRIC_SELECTOR"
    metric_selector = "active-directory.replication.consistency.status"
  }
}
