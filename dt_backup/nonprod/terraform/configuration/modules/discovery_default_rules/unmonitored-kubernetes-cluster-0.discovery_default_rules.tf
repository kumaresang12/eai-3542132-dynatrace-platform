resource "dynatrace_discovery_default_rules" "unmonitored-kubernetes-cluster-0" {
  rule {
    description       = "Kubernetes is the 'operating system' of the modern cloud. As such, it's important from a platform engineering perspective to monitor Kubernetes, not just your workloads. Dynatrace monitors Kubernetes using an Operator. This rule detects Kubernetes clusters which are not monitored using the Operator and opens a new tab to the Kubernetes app, so that you can install the Operator."
    category          = "Kubernetes"
    environment_scope = true
    id                = "unmonitored-kubernetes-cluster-0"
    priority          = "CRITICAL"
    query             =<<-EOT
      fetch dt.entity.process_group_instance, from:-15m
              | filter contains(toString(softwareTechnologies),"type:KUBERNETES")
              | fieldsAdd hostId=belongs_to[dt.entity.host]
              | lookup [fetch dt.entity.host | fieldsAdd compliant=isNotNull(contains[dt.entity.kubernetes_node])], lookupField:id, sourceField:hostId, prefix:"host."
              | summarize count=count(), by:{host.id, host=host.entity.name, compliant=host.compliant}
              | fieldsRemove count
              
    EOT
    title             = "Unmonitored Kubernetes cluster"
    actions {
      action {
        name = "installDynatraceOperator"
      }
    }
  }
  settings {
    muted = false
  }
}
