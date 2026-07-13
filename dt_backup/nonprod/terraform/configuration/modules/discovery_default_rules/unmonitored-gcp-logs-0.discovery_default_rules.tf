resource "dynatrace_discovery_default_rules" "unmonitored-gcp-logs-0" {
  rule {
    description       = "Logs are a critical signal for Observability and Security use cases. This rule looks for Google Cloud Platform integration for your account and detects if any logs are ingested. The recommended remediation action is set up GCP resource and audit log ingest to ensure there are no blind spots."
    category          = "Logs"
    environment_scope = true
    id                = "unmonitored-gcp-logs-0"
    priority          = "CRITICAL"
    query             =<<-EOT
      fetch `dt.entity.cloud:gcp:project`, from:-15m
             | summarize count=count(), by:{entity.name}
             | fields `Google Cloud project`=entity.name,id=entity.name
             | lookup [ fetch logs | fields gcp.project.id, cloud.provider | filter cloud.provider == "gcp" | summarize count=count(), by:{gcp.project.id} | fields gcp.project.id, hasLogs = count > 0 ],
                        sourceField:`Google Cloud project`, lookupField: gcp.project.id
             | fields `Google Cloud project`, id, compliant=lookup.hasLogs
             
    EOT
    title             = "Unmonitored Google Cloud logs"
    zero_rated        = true
    actions {
      action {
        name           = "configureLogForwardingForCloud"
        instant_action = true
        parameters {
          parameter {
            name  = "cloudProvider"
            value = "gcp"
          }
        }
      }
    }
  }
  settings {
    muted = false
  }
}
