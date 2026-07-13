resource "dynatrace_discovery_default_rules" "unmonitored-linux-system-logs-0" {
  rule {
    description       = "Logs are a critical signal for Observability and Security use cases. There are multiple ways to ingest logs, but the easiest is via OneAgent. This rule looks for Linux system logs which have been detected by OneAgent but are not being ingested. The recommended remediation action is to enable a built-in rule to ingest these logs environment wide, to ensure there are no blind spots. Alternatively, you can create your own rules at the environment, host group, or host level."
    category          = "Logs"
    environment_scope = true
    id                = "unmonitored-linux-system-logs-0"
    priority          = "CRITICAL"
    query             =<<-EOT
      fetch dt.entity.process_group_instance, from:-7d
              | filter processType == "LINUX_SYSTEM"
              | fields hostId=belongs_to[dt.entity.host],id,logMonitored=isNotNull(logPathLastUpdate) or (isNotNull(logSourceState) and contains(toString(logSourceState),"LOG_STORAGE_CONFIGURATION_STATUS_SEND_TO_STORAGE"))
              | filter id in [ fetch dt.entity.process_group_instance, from:-2h | filter processType == "LINUX_SYSTEM" |fields id]
              | lookup [fetch dt.entity.host], lookupField: id, sourceField: hostId, prefix:"host."
              | fields host.id,host=host.entity.name,compliant=logMonitored
              
    EOT
    title             = "Unmonitored Linux system logs"
    actions {
      action {
        name = "enableLogIngestRule"
        parameters {
          parameter {
            name  = "ruleName"
            value = "[Built-in] Linux system logs"
          }
        }
      }
    }
  }
  settings {
    muted = false
  }
}
