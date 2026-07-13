resource "dynatrace_metric_events" "Kubernetes_Monitoring_Statistics_Failure_rate_increase" {
  enabled                    = false
  event_entity_dimension_key = "dt.entity.kubernetes_cluster"
  summary                    = "Kubernetes Monitoring Statistics: Failure rate increase"
  event_template {
    description   = "The failure rate ({severity}) of queries to the Kubernetes API was {alert_condition} the baseline of {baseline}. Please check the Kubernetes Monitoring Statistics Dashboard for further troubleshooting."
    # davis_merge = false
    event_type    = "CUSTOM_ALERT"
    title         = "Kubernetes Monitoring Statistics: Failure rate increase"
  }
  model_properties {
    type               = "AUTO_ADAPTIVE_THRESHOLD"
    alert_condition    = "ABOVE"
    alert_on_no_data   = false
    dealerting_samples = 30
    samples            = 30
    signal_fluctuation = 5
    violating_samples  = 10
  }
  query_definition {
    type            = "METRIC_SELECTOR"
    metric_selector =<<-EOT
      dsfm:active_gate.kubernetes.api.query_count:filter(ne(status_code,"200")):splitBy("dt.entity.kubernetes_cluster"):sum:auto:rate(1m)
    EOT
    query_offset    = 2
  }
}
