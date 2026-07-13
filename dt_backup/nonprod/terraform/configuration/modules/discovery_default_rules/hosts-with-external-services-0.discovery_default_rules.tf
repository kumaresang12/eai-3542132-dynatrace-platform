resource "dynatrace_discovery_default_rules" "hosts-with-external-services-0" {
  rule {
    description       = "Through end-to-end tracing services on these hosts were found to be externally facing"
    category          = "Deep monitoring"
    environment_scope = false
    id                = "hosts-with-external-services-0"
    priority          = "CRITICAL"
    query             =<<-EOT
      fetch dt.entity.host, from:-15m
              | filter hasPublicTraffic == true OR ebpfHasPublicTraffic == true
              | fields host=entity.name, monitoringMode, host.id=id, compliant=(monitoringMode == "FULL_STACK")
              
    EOT
    title             = "Hosts with external services"
    actions {
      action {
        name = "setMonitoringMode"
        parameters {
          parameter {
            name  = "mode"
            value = "FULL_STACK"
          }
        }
      }
    }
  }
  settings {
    muted = false
  }
}
