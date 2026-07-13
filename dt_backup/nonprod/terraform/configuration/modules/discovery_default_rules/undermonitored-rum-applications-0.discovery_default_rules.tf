resource "dynatrace_discovery_default_rules" "undermonitored-rum-applications-0" {
  rule {
    description       =<<-EOT
      Real User Monitoring (RUM) provides a great view into frontend
              performance and behavior, as it experienced by users. It is recommended to also include synthetic tests
              to ensure consistent performance and availability monitoring around the clock.
              
    EOT
    category          = "Frontend"
    environment_scope = true
    id                = "undermonitored-rum-applications-0"
    priority          = "WARNING"
    query             =<<-EOT
      fetch dt.entity.application, from:-15m
              | fieldsAdd isSyntheticMonitored=isNotNull(monitored_by[dt.entity.synthetic_test]), isHttpMonitored=isNotNull(monitored_by[dt.entity.http_check])
              | fieldsAdd compliant=(isSyntheticMonitored or isHttpMonitored)
              | fields application.id=id, application=entity.name, isSyntheticMonitored, isHttpMonitored, compliant
              
    EOT
    title             = "Undermonitored frontend applications"
    actions {
      action {
        name = "configureSynthetic"
      }
    }
  }
  settings {
    muted = false
  }
}
