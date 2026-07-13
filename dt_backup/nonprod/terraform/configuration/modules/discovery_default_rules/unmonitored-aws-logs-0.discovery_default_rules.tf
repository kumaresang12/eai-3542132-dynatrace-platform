resource "dynatrace_discovery_default_rules" "unmonitored-aws-logs-0" {
  rule {
    description       = "Logs are a critical signal for Observability and Security use cases. This rule looks for AWS integration for your account and detects if any logs are ingested. The recommended remediation action is set up AWS log ingest to ensure there are no blind spots. There are multiple ways to ingest resource and activity logs from AWS."
    category          = "Logs"
    environment_scope = true
    id                = "unmonitored-aws-logs-0"
    priority          = "CRITICAL"
    query             =<<-EOT
      fetch dt.entity.aws_credentials, from:-15m
             | summarize count=count(), by:{awsAccountId}
             | fields `Account ID`=awsAccountId, id=awsAccountId
             | lookup [ fetch logs | filter cloud.provider == "aws" | summarize count=count(), by:{aws.account.id} | fields aws.account.id, hasLogs = count > 0 ],
                        sourceField:`Account ID`, lookupField: aws.account.id
             | fields `Account ID`, id, compliant=lookup.hasLogs
             
    EOT
    title             = "Unmonitored AWS logs"
    zero_rated        = true
    actions {
      action {
        name           = "configureLogForwardingForCloud"
        instant_action = true
        parameters {
          parameter {
            name  = "cloudProvider"
            value = "aws"
          }
        }
      }
    }
  }
  settings {
    muted = false
  }
}
