resource "dynatrace_discovery_default_rules" "undermonitored-mongo-db-0" {
  rule {
    description       =<<-EOT
      MongoDB databases are an important part of your infrastructure.
              Infrastructure Mode and a database extension are highly recommended. Without
              adequate monitoring, Davis can only tell that the database is the rootcause,
              not why the database is causing slow performance.
    EOT
    category          = "Databases"
    environment_scope = false
    id                = "undermonitored-mongo-db-0"
    priority          = "WARNING"
    query             =<<-EOT
      fetch dt.entity.process_group_instance, from:-15m
              | filter matchesValue(softwareTechnologies, "*type:MONGODB*")
              | fieldsAdd hostid=belongs_to[dt.entity.host]
              | lookup [ fetch dt.entity.host | fieldsAdd monitoringMode], sourceField:hostid, lookupField:id, prefix:"host."
              | fields process.id=id, process=entity.name, host=host.entity.name, host.id, listenPorts, ipAddress=host.ipAddress, monitoringMode=host.monitoringMode, compliant=(in(host.monitoringMode, array("INFRASTRUCTURE", "FULL_STACK")))
              
    EOT
    title             = "Undermonitored MongoDB databases"
    actions {
      action {
        name = "setMonitoringMode"
        parameters {
          parameter {
            name  = "mode"
            value = "AT_LEAST_INFRA"
          }
        }
      }
    }
  }
  settings {
    muted = false
  }
}
