resource "dynatrace_metric_events" "Active_Directory-ATQ_Average_Thread_Usage" {
  enabled = false
  summary = "Active Directory - ATQ Average Thread Usage"
  event_template {
    description   = "The {metricname} value of {severity} was {alert_condition} your custom threshold of {threshold}."
    # davis_merge = false
    event_type    = "CUSTOM_ALERT"
    title         = "Active Directory - ATQ Average Thread Usage"
  }
  model_properties {
    type               = "STATIC_THRESHOLD"
    alert_condition    = "ABOVE"
    alert_on_no_data   = false
    dealerting_samples = 5
    samples            = 5
    threshold          = 80
    violating_samples  = 2
  }
  query_definition {
    type            = "METRIC_SELECTOR"
    metric_selector = "active-directory.atq.server.average.thread.usage"
  }
}
