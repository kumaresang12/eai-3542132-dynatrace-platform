resource "dynatrace_discovery_default_rules" "unmonitored-fluentbit-logs-0" {
  rule {
    description       =<<-EOT
      Monitoring Kubernetes logs, together with other observability signals like metrics and traces, is important to assure full context for observability and troubleshooting use cases.
          This rule detects existing fluentbit instances that are not integrated with Dynatrace, and provides instructions for configuring your log forwarder to send data to logs ingest API.
    EOT
    category          = "Logs"
    environment_scope = true
    id                = "unmonitored-fluentbit-logs-0"
    priority          = "WARNING"
    query             =<<-EOT
      fetch dt.entity.container_group_instance
              | fieldsAdd containerImageName, cluster_id=belongs_to[dt.entity.kubernetes_cluster]
              | filter matchesPhrase(containerImageName,"fluent-bit")
              | summarize tmp=count(), by: cluster_id
              | fieldsRemove tmp
              | fieldsAdd compliant = cluster_id in [
                timeseries count = sum(dt.log.status_per_entity_count), by: {dt.entity.kubernetes_cluster}, from: now()-1h
                | filterOut isNull(dt.entity.kubernetes_cluster)
                | fields dt.entity.kubernetes_cluster
              ]
              | lookup [fetch dt.entity.kubernetes_cluster], sourceField:cluster_id, lookupField:id, prefix:"kubernetes_cluster."
              | fields kubernetes_cluster=kubernetes_cluster.entity.name, kubernetes_cluster.id=cluster_id, compliant
              
    EOT
    title             = "Unmonitored fluentbit logs"
    actions {
      action {
        name           = "configureLogForwardingForTechnology"
        instant_action = true
        parameters {
          parameter {
            name  = "technology"
            value = "fluent-bit"
          }
        }
      }
    }
  }
  settings {
    muted = false
  }
}
