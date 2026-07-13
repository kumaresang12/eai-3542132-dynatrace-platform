resource "dynatrace_metric_events" "Kubernetes_Monitoring_Statistics_Query_duration_increase" {
  enabled                    = false
  event_entity_dimension_key = "dt.entity.kubernetes_cluster"
  summary                    = "Kubernetes Monitoring Statistics: Query duration increase"
  event_template {
    description   = "The average duration ({severity}) of queries to the Kubernetes API was {alert_condition} the baseline of {baseline}. Please check the Kubernetes Monitoring Statistics Dashboard for further troubleshooting."
    # davis_merge = false
    event_type    = "CUSTOM_ALERT"
    title         = "Kubernetes Monitoring Statistics: Query duration increase"
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
      dsfm:active_gate.kubernetes.api.query_duration:filter(existsKey("dt.entity.kubernetes_cluster"),eq("status_code","200")):splitBy("dt.entity.kubernetes_cluster"):avg
    EOT
    query_offset    = 2
  }
}
