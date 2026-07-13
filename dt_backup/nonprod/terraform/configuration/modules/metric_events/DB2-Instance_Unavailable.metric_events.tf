resource "dynatrace_metric_events" "DB2-Instance_Unavailable" {
  enabled                    = false
  event_entity_dimension_key = "dt.entity.sql:db2_instance"
  summary                    = "DB2 - Instance Unavailable"
  event_template {
    description = "The availability metric for DB2 Instance {dims:dt.entity.sql:db2_instance.name} was unable to be collected for at least {missing_data_samples} minutes."
    davis_merge = true
    event_type  = "AVAILABILITY"
    title       = "DB2 - Instance Unavailable"
  }
  model_properties {
    type               = "STATIC_THRESHOLD"
    alert_condition    = "BELOW"
    alert_on_no_data   = true
    dealerting_samples = 5
    samples            = 5
    threshold          = 100
    violating_samples  = 3
  }
  query_definition {
    type            = "METRIC_SELECTOR"
    metric_selector = "db2.availability:splitBy(\"dt.entity.sql:db2_instance\")"
  }
}
