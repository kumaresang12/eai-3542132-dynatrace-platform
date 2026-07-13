resource "dynatrace_discovery_default_rules" "hosts-with-injectable-processes-0" {
  rule {
    description       =<<-EOT
      All hosts which have processes that support deep monitoring. Deep monitoring of microservices
              enables end to end tracing.
    EOT
    category          = "Deep monitoring"
    environment_scope = false
    id                = "hosts-with-injectable-processes-0"
    priority          = "INFO"
    query             =<<-EOT
      fetch dt.entity.process_group_instance, from:-15m
              | filter in(processType,{"JAVA", "PHP", "DOTNET", "GO", "NODE_JS", "APACHE_HTTPD", "NGINX"})
              | fieldsAdd hostid=belongs_to[dt.entity.host]
              | lookup [ fetch dt.entity.host | fieldsAdd monitoringMode], sourceField:hostid, lookupField:id, prefix:"host."
              | fields entity.name=host.entity.name, id=host.id, monitoringMode=host.monitoringMode
              | summarize by:{id,entity.name,monitoringMode}, count=count()
              | fieldsRemove count
              | fieldsAdd host.id=id, compliant=(monitoringMode == "FULL_STACK")
              
    EOT
    title             = "Hosts with injectable processes"
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
