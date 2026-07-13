resource "dynatrace_discovery_default_rules" "undermonitored-mysql-db-0" {
  rule {
    description       =<<-EOT
      MySQL databases are an important part of your infrastructure.
              Infrastructure Mode and a database extension are highly recommended. Without
              adequate monitoring, Davis can only tell that the database is the rootcause,
              not why the database is causing slow performance.
    EOT
    category          = "Databases"
    environment_scope = false
    id                = "undermonitored-mysql-db-0"
    priority          = "WARNING"
    query             =<<-EOT
      fetch dt.entity.process_group_instance, from:-15m
              | filter matchesValue(softwareTechnologies, "*type:MYSQL*")
              | fieldsAdd hostid=belongs_to[dt.entity.host]
              | lookup [ fetch dt.entity.host | fieldsAdd monitoringMode], sourceField:hostid, lookupField:id, prefix:"host."
              | fields id, entity.name, host=host.entity.name, host.id, listenPorts, ipAddress=host.ipAddress, monitoringMode=host.monitoringMode
              | lookup [ fetch `dt.entity.mysql:instance` | fields hostid=runs_on[dt.entity.host]], sourceField:host.id, lookupField:hostid, prefix:"db."
              | fields process.id=id, process=entity.name, host, host.id, listenPorts, ipAddress, monitoringMode, compliant=(isNotNull(db.hostid ) AND in(monitoringMode, array("INFRASTRUCTURE", "FULL_STACK")))
              
    EOT
    title             = "Undermonitored MySQL databases"
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
      action {
        name = "activateExtension"
        parameters {
          parameter {
            name  = "extensionName"
            value = "com.dynatrace.extension.mysql"
          }
          parameter {
            name  = "defaultPort"
            value = "3306"
          }
        }
      }
    }
  }
  settings {
    muted = false
  }
}
