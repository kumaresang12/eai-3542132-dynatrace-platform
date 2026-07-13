resource "dynatrace_discovery_default_rules" "undermonitored-rabbit-mq-0" {
  rule {
    description       =<<-EOT
      RabbitMQ is an important messaging part of your infrastructure.
              Infrastructure Mode and an extension are highly recommended. Without
              adequate monitoring, Davis has a limited view into your MQ health.
    EOT
    category          = "Messaging"
    environment_scope = false
    id                = "undermonitored-rabbit-mq-0"
    priority          = "WARNING"
    query             =<<-EOT
      fetch dt.entity.process_group_instance, from:-15m
              | filter matchesValue(softwareTechnologies, "type:RABBIT_MQ")
              | fieldsAdd hostid=belongs_to[dt.entity.host]
              | lookup [ fetch dt.entity.host | fieldsAdd monitoringMode], sourceField:hostid, lookupField:id, prefix:"host."
              | fields id, entity.name, host=host.entity.name, host.id, listenPorts, ipAddress=host.ipAddress, monitoringMode=host.monitoringMode
              | lookup [ fetch `dt.entity.rabbitmq:node` | fieldsAdd hostid=same_as[dt.entity.host][0]], sourceField:host.id, lookupField:hostid, prefix:"mq."
              | fieldsAdd compliant=(isNotNull(mq.hostid) and in(monitoringMode, array("INFRASTRUCTURE", "FULL_STACK")))
              | fields process.id=id, process=entity.name, host, host.id, listenPorts, ipAddress, monitoringMode, mq.id, mq=mq.entity.name, compliant
              
    EOT
    title             = "Undermonitored RabbitMQ"
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
            value = "com.dynatrace.rabbitmq"
          }
          parameter {
            name  = "defaultPort"
            value = "5672"
          }
        }
      }
    }
  }
  settings {
    muted = false
  }
}
