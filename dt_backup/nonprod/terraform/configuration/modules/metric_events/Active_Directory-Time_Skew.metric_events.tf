resource "dynatrace_metric_events" "Active_Directory-Time_Skew" {
  enabled = false
  summary = "Active Directory - Time Skew"
  event_template {
    description = "The {metricname} value of {severity} was {alert_condition} your custom threshold of {threshold}."
    davis_merge = true
    event_type  = "RESOURCE"
    title       = "Active Directory - Time Skew"
  }
  model_properties {
    type               = "STATIC_THRESHOLD"
    alert_condition    = "ABOVE"
    alert_on_no_data   = false
    dealerting_samples = 5
    samples            = 5
    threshold          = 120
    violating_samples  = 1
  }
  query_definition {
    type            = "METRIC_SELECTOR"
    metric_selector = "active-directory.timeskew.secs"
  }
}
