resource "dynatrace_discovery_default_rules" "unmonitored-kubernetes-logs-0" {
  rule {
    description       = "Logs are a critical signal for Observability and Security use cases. There are multiple ways to ingest logs, but the easiest is via OneAgent. This rule looks for Kubernetes containers and determines whether logs have been detected and ingested by OneAgent. The recommended remediation action is to enable a built-in rule to ingest these logs environment wide, to ensure there are no blind spots. Alternatively, you can create your own rules at the environment, namespace, deployment, or container level."
    category          = "Logs"
    environment_scope = true
    id                = "unmonitored-kubernetes-logs-0"
    priority          = "CRITICAL"
    query             =<<-EOT
      fetch dt.entity.container_group_instance
              | fieldsAdd process=contains[dt.entity.process_group_instance][0]
              | filterOut isNull(process) or isNull(belongs_to[dt.entity.kubernetes_cluster])
              | lookup [fetch dt.entity.process_group_instance, from:-7d
                | fieldsAdd hostId=belongs_to[dt.entity.host],id,logMonitored=isNotNull(logPathLastUpdate) or
                  (isNotNull(logSourceState) and contains(toString(logSourceState),"LOG_STORAGE_CONFIGURATION_STATUS_SEND_TO_STORAGE"))
              ], sourceField:process, lookupField:id, prefix:"process."
              | lookup [fetch dt.entity.cloud_application], sourceField:belongs_to[dt.entity.cloud_application], lookupField:id, prefix:"deployment."
              | lookup [fetch dt.entity.cloud_application_namespace], sourceField:belongs_to[dt.entity.cloud_application_namespace], lookupField:id, prefix:"namespace."
              | fields namespace=namespace.entity.name, namespace.id, deployment=deployment.entity.name, deployment.id, container=entity.name, container.id=id,
                compliant=process.logMonitored
              
    EOT
    title             = "Unmonitored Kubernetes logs"
    actions {
      action {
        name = "enableLogIngestRule"
        parameters {
          parameter {
            name  = "ruleName"
            value = "[Built-in] Kubernetes default namespaces logs"
          }
        }
      }
    }
  }
  settings {
    muted = false
  }
}
