resource "dynatrace_discovery_default_rules" "undermonitored-kafka-0" {
  rule {
    description       =<<-EOT
      Kafka is an important messaging part of your infrastructure.
              Infrastructure Mode and an extension are highly recommended. Without
              adequate monitoring, Davis has a limited view into your Kafka health.
    EOT
    category          = "Messaging"
    environment_scope = false
    id                = "undermonitored-kafka-0"
    priority          = "WARNING"
    query             =<<-EOT
      fetch dt.entity.process_group_instance, from:-15m
              | filter matchesValue(softwareTechnologies, "type:KAFKA")
              | fieldsAdd hostid=belongs_to[dt.entity.host]
              | lookup [ fetch dt.entity.host | fieldsAdd monitoringMode], sourceField:hostid, lookupField:id, prefix:"host."
              | fields id, entity.name, host=host.entity.name, host.id, listenPorts, ipAddress=host.ipAddress, monitoringMode=host.monitoringMode
              | lookup [ fetch `dt.entity.kafka:broker` | fieldsAdd hostid=runs_on[dt.entity.host]], sourceField:host.id, lookupField:hostid, prefix:"kafka."
              | fieldsAdd compliant=(isNotNull(kafka.hostid) and in(monitoringMode, array("INFRASTRUCTURE", "FULL_STACK")))
              | fields process.id=id, process=entity.name, host, host.id, listenPorts, ipAddress, monitoringMode, kafka.id, kafka=kafka.entity.name, compliant
              
    EOT
    title             = "Undermonitored Kafka"
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
            value = "com.dynatrace.extension.jmx-kafka"
          }
          parameter {
            name  = "defaultPort"
            value = "9092"
          }
        }
      }
    }
  }
  settings {
    muted = false
  }
}
