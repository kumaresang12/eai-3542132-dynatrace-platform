resource "dynatrace_discovery_default_rules" "unmonitored-azure-logs-0" {
  rule {
    description       = "Logs are a critical signal for Observability and Security use cases. This rule looks for Microsoft Azure integration for your account and detects if any logs are ingested. The recommended remediation action is set up Azure resource and activity log ingest to ensure there are no blind spots."
    category          = "Logs"
    environment_scope = true
    id                = "unmonitored-azure-logs-0"
    priority          = "CRITICAL"
    query             =<<-EOT
      fetch dt.entity.azure_subscription, from:-15m
             | summarize count=count(), by:{azureSubscriptionUuid}
             | fields `Azure subscription ID`=upper(azureSubscriptionUuid),id=azureSubscriptionUuid
             | lookup [ fetch logs | fields azure.subscription=upper(azure.subscription), cloud.provider | filter cloud.provider == "Azure" OR cloud.provider == "azure" | summarize count=count(), by:{azure.subscription} | fields azure.subscription, hasLogs = count > 0 ],
                        sourceField:`Azure subscription ID`, lookupField: azure.subscription
             | fields `Azure subscription ID`, id, compliant=lookup.hasLogs
             
    EOT
    title             = "Unmonitored Azure logs"
    zero_rated        = true
    actions {
      action {
        name           = "configureLogForwardingForCloud"
        instant_action = true
        parameters {
          parameter {
            name  = "cloudProvider"
            value = "azure"
          }
        }
      }
    }
  }
  settings {
    muted = false
  }
}
