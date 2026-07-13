resource "dynatrace_discovery_default_rules" "undermonitored-redis-db-0" {
  rule {
    description       =<<-EOT
      Redis in-memory databases are an important part of your infrastructure.
              Infrastructure Mode and a database extension are highly recommended. Without
              adequate monitoring, Davis can only tell that the database is the rootcause,
              not why the database is causing slow performance.
    EOT
    category          = "Databases"
    environment_scope = false
    id                = "undermonitored-redis-db-0"
    priority          = "WARNING"
    query             =<<-EOT
      fetch dt.entity.process_group_instance, from:-15m
              | filter matchesValue(softwareTechnologies, "*type:REDIS*")
              | fieldsAdd hostid=belongs_to[dt.entity.host]
              | lookup [ fetch dt.entity.host | fieldsAdd monitoringMode], sourceField:hostid, lookupField:id, prefix:"host."
              | fields id, entity.name, host=host.entity.name, host.id, listenPorts, ipAddress=host.ipAddress, monitoringMode=host.monitoringMode
              | lookup [ fetch `dt.entity.prometheus:com_dynatrace_extension_redis_node` | fieldsAdd same_as | fieldsFlatten same_as | expand hostid = same_as.dt.entity.host], sourceField:host.id, lookupField:hostid, prefix:"db."
              | fields process.id=id, process=entity.name, host, host.id, listenPorts, ipAddress, monitoringMode, compliant=(isNotNull(db.hostid) AND in(monitoringMode, array("INFRASTRUCTURE", "FULL_STACK")))
              
    EOT
    title             = "Undermonitored Redis databases"
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
            value = "com.dynatrace.extension.prom-redis-enterprise"
          }
        }
      }
    }
  }
  settings {
    muted = false
  }
}
