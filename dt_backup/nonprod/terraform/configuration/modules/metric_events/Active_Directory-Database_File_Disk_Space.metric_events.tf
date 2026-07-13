resource "dynatrace_metric_events" "Active_Directory-Database_File_Disk_Space" {
  enabled = false
  summary = "Active Directory - Database File Disk Space"
  event_template {
    description = "The {metricname} value of {severity} was {alert_condition} your custom threshold of {threshold}."
    davis_merge = true
    event_type  = "RESOURCE"
    title       = "Active Directory - Database File Disk Space"
  }
  model_properties {
    type               = "STATIC_THRESHOLD"
    alert_condition    = "BELOW"
    alert_on_no_data   = false
    dealerting_samples = 5
    samples            = 5
    threshold          = 15
    violating_samples  = 2
  }
  query_definition {
    type            = "METRIC_SELECTOR"
    metric_selector = "active-directory.database.diskfree"
  }
}
