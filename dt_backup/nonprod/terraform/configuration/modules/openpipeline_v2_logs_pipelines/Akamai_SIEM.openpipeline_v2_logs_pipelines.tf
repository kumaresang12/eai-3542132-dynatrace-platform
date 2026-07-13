resource "dynatrace_openpipeline_v2_logs_pipelines" "Akamai_SIEM" {
  custom_id    = "extension:akamai-siem"
  display_name = "Akamai SIEM"
  metadata_list {
    metadata {
      entry_key   = "extension_name"
      entry_value = "com.dynatrace.extension.akamai-siem"
    }
    metadata {
      entry_key   = "extension_version"
      entry_value = "2.0.0"
    }
  }
  metric_extraction {
    processors {
      processor {
        description = "The count of events matching generic web app attacks. These include keywords such as Trojan, Web attack tool, Web protocol attack, Web platform attack, etc."
        type        = "counterMetric"
        enabled     = true
        id          = "generic-web-attacks"
        matcher     =<<-EOT
          (matchesPhrase(akamai.attackdata.rulemessages, "Trojan") or matchesPhrase(akamai.attackdata.rulemessages, "Invalid HTTP") or matchesPhrase(akamai.attackdata.rulemessages, "Total Inbound") or matchesPhrase(akamai.attackdata.rulemessages, "Web Attack Tool") or matchesPhrase(akamai.attackdata.rulemessages, "Web Protocol Attack") or matchesPhrase(akamai.attackdata.rulemessages, "Web Platform Attack") or matchesPhrase(akamai.attackdata.rulemessages, "Web Policy Violation")) and (matchesValue(akamai.attackdata.ruleactions, "alert") or matchesValue(akamai.attackdata.ruleactions, "monitor") or matchesValue(akamai.attackdata.ruleactions, "allow"))
        EOT
        counter_metric {
          metric_key = "log.akamai-siem.generic-web-attacks"
          dimensions {
            dimension {
              default_value          = "n/a"
              destination_field_name = "dt.extension.config.id"
              extraction_type        = "field"
              source_field_name      = "dt.extension.config.id"
            }
            dimension {
              default_value          = "n/a"
              destination_field_name = "extension.config.name"
              extraction_type        = "field"
              source_field_name      = "extension.config.name"
            }
            dimension {
              default_value          = "n/a"
              destination_field_name = "dt.extension.name"
              extraction_type        = "field"
              source_field_name      = "dt.extension.name"
            }
            dimension {
              default_value          = "n/a"
              destination_field_name = "akamai.config.ids"
              extraction_type        = "field"
              source_field_name      = "akamai.config.ids"
            }
          }
        }
      }
      processor {
        description = "The count of events matching a slow POST attack, which tries to tie up the site by using extremely slow requests and responses."
        type        = "counterMetric"
        enabled     = true
        id          = "slow-posts"
        matcher     =<<-EOT
          matchesPhrase(akamai.attackdata.rulemessages, "Post Slow") and (matchesValue(akamai.attackdata.ruleactions, "alert") or matchesValue(akamai.attackdata.ruleactions, "monitor") or matchesValue(akamai.attackdata.ruleactions, "allow"))
        EOT
        counter_metric {
          metric_key = "log.akamai-siem.slow-posts"
          dimensions {
            dimension {
              default_value          = "n/a"
              destination_field_name = "dt.extension.config.id"
              extraction_type        = "field"
              source_field_name      = "dt.extension.config.id"
            }
            dimension {
              default_value          = "n/a"
              destination_field_name = "extension.config.name"
              extraction_type        = "field"
              source_field_name      = "extension.config.name"
            }
            dimension {
              default_value          = "n/a"
              destination_field_name = "dt.extension.name"
              extraction_type        = "field"
              source_field_name      = "dt.extension.name"
            }
          }
        }
      }
      processor {
        description = "The total number of events processed from Akamai SIEM, regardless of attack type or severity."
        type        = "counterMetric"
        enabled     = true
        id          = "total-events"
        matcher     = "matchesValue(log.source, \"Akamai SIEM\")"
        counter_metric {
          metric_key = "log.akamai-siem.total-events"
          dimensions {
            dimension {
              default_value          = "n/a"
              destination_field_name = "dt.extension.config.id"
              extraction_type        = "field"
              source_field_name      = "dt.extension.config.id"
            }
            dimension {
              default_value          = "n/a"
              destination_field_name = "extension.config.name"
              extraction_type        = "field"
              source_field_name      = "extension.config.name"
            }
            dimension {
              default_value          = "n/a"
              destination_field_name = "dt.extension.name"
              extraction_type        = "field"
              source_field_name      = "dt.extension.name"
            }
            dimension {
              default_value          = "n/a"
              destination_field_name = "akamai.config.ids"
              extraction_type        = "field"
              source_field_name      = "akamai.config.ids"
            }
            dimension {
              default_value          = "n/a"
              destination_field_name = "akamai.attackdata.ruletags"
              extraction_type        = "field"
              source_field_name      = "akamai.attackdata.ruletags"
            }
            dimension {
              default_value          = "n/a"
              destination_field_name = "akamai.attackdata.rulemessages"
              extraction_type        = "field"
              source_field_name      = "akamai.attackdata.rulemessages"
            }
            dimension {
              default_value          = "n/a"
              destination_field_name = "akamai.attackdata.ruleactions"
              extraction_type        = "field"
              source_field_name      = "akamai.attackdata.ruleactions"
            }
          }
        }
      }
      processor {
        description = "The count of events matching volume based activity such as request rates exceeded or DoS attacks."
        type        = "counterMetric"
        enabled     = true
        id          = "volumetric-activity"
        matcher     =<<-EOT
          (matchesPhrase(akamai.attackdata.rulemessages, "Rate") or matchesPhrase(akamai.attackdata.rulemessages, "DoS Anomaly")) and (matchesValue(akamai.attackdata.ruleactions, "alert") or matchesValue(akamai.attackdata.ruleactions, "monitor") or matchesValue(akamai.attackdata.ruleactions, "allow"))
        EOT
        counter_metric {
          metric_key = "log.akamai-siem.volumetric-activity"
          dimensions {
            dimension {
              default_value          = "n/a"
              destination_field_name = "dt.extension.config.id"
              extraction_type        = "field"
              source_field_name      = "dt.extension.config.id"
            }
            dimension {
              default_value          = "n/a"
              destination_field_name = "extension.config.name"
              extraction_type        = "field"
              source_field_name      = "extension.config.name"
            }
            dimension {
              default_value          = "n/a"
              destination_field_name = "dt.extension.name"
              extraction_type        = "field"
              source_field_name      = "dt.extension.name"
            }
            dimension {
              default_value          = "n/a"
              destination_field_name = "akamai.config.ids"
              extraction_type        = "field"
              source_field_name      = "akamai.config.ids"
            }
          }
        }
      }
      processor {
        description = "The count of events matching specialized web app attacks such as SQL/PHP/Command injections, cross site scripting, etc."
        type        = "counterMetric"
        enabled     = true
        id          = "targeted-web-attacks"
        matcher     =<<-EOT
          (matchesPhrase(akamai.attackdata.rulemessages, "Cross-site Scripting") or matchesPhrase(akamai.attackdata.rulemessages, "SQL Injection") or matchesPhrase(akamai.attackdata.rulemessages, "Remote File Inclusion") or matchesPhrase(akamai.attackdata.rulemessages, "Command Injection") or matchesPhrase(akamai.attackdata.rulemessages, "PHP Injection")) and (matchesValue(akamai.attackdata.ruleactions, "alert") or matchesValue(akamai.attackdata.ruleactions, "monitor") or matchesValue(akamai.attackdata.ruleactions, "allow"))
        EOT
        counter_metric {
          metric_key = "log.akamai-siem.targeted-web-attacks"
          dimensions {
            dimension {
              default_value          = "n/a"
              destination_field_name = "dt.extension.config.id"
              extraction_type        = "field"
              source_field_name      = "dt.extension.config.id"
            }
            dimension {
              default_value          = "n/a"
              destination_field_name = "extension.config.name"
              extraction_type        = "field"
              source_field_name      = "extension.config.name"
            }
            dimension {
              default_value          = "n/a"
              destination_field_name = "dt.extension.name"
              extraction_type        = "field"
              source_field_name      = "dt.extension.name"
            }
            dimension {
              default_value          = "n/a"
              destination_field_name = "akamai.config.ids"
              extraction_type        = "field"
              source_field_name      = "akamai.config.ids"
            }
          }
        }
      }
      processor {
        description = "The count of events where the rule action is to block the request (deny)."
        type        = "counterMetric"
        enabled     = true
        id          = "deny_count"
        matcher     = "matchesValue(akamai.attackdata.ruleactions, \"deny\")"
        counter_metric {
          metric_key = "log.akamai-siem.deny_count"
          dimensions {
            dimension {
              default_value          = "n/a"
              destination_field_name = "dt.extension.config.id"
              extraction_type        = "field"
              source_field_name      = "dt.extension.config.id"
            }
            dimension {
              default_value          = "n/a"
              destination_field_name = "extension.config.name"
              extraction_type        = "field"
              source_field_name      = "extension.config.name"
            }
            dimension {
              default_value          = "n/a"
              destination_field_name = "dt.extension.name"
              extraction_type        = "field"
              source_field_name      = "dt.extension.name"
            }
            dimension {
              default_value          = "n/a"
              destination_field_name = "akamai.config.ids"
              extraction_type        = "field"
              source_field_name      = "akamai.config.ids"
            }
            dimension {
              default_value          = "n/a"
              destination_field_name = "akamai.attackdata.ruletags"
              extraction_type        = "field"
              source_field_name      = "akamai.attackdata.ruletags"
            }
            dimension {
              default_value          = "n/a"
              destination_field_name = "akamai.attackdata.rulemessages"
              extraction_type        = "field"
              source_field_name      = "akamai.attackdata.rulemessages"
            }
          }
        }
      }
      processor {
        description = "The count of events where the rule action is allow the request and log a warning (alert)."
        type        = "counterMetric"
        enabled     = true
        id          = "alert_count"
        matcher     = "matchesValue(akamai.attackdata.ruleactions, \"alert\")"
        counter_metric {
          metric_key = "log.akamai-siem.alert_count"
          dimensions {
            dimension {
              default_value          = "n/a"
              destination_field_name = "dt.extension.config.id"
              extraction_type        = "field"
              source_field_name      = "dt.extension.config.id"
            }
            dimension {
              default_value          = "n/a"
              destination_field_name = "extension.config.name"
              extraction_type        = "field"
              source_field_name      = "extension.config.name"
            }
            dimension {
              default_value          = "n/a"
              destination_field_name = "dt.extension.name"
              extraction_type        = "field"
              source_field_name      = "dt.extension.name"
            }
            dimension {
              default_value          = "n/a"
              destination_field_name = "akamai.config.ids"
              extraction_type        = "field"
              source_field_name      = "akamai.config.ids"
            }
            dimension {
              default_value          = "n/a"
              destination_field_name = "akamai.attackdata.ruletags"
              extraction_type        = "field"
              source_field_name      = "akamai.attackdata.ruletags"
            }
            dimension {
              default_value          = "n/a"
              destination_field_name = "akamai.attackdata.rulemessages"
              extraction_type        = "field"
              source_field_name      = "akamai.attackdata.rulemessages"
            }
          }
        }
      }
      processor {
        description = "The count of events with monitor rule action type."
        type        = "counterMetric"
        enabled     = true
        id          = "monitor_count"
        matcher     = "matchesValue(akamai.attackdata.ruleactions, \"monitor\")"
        counter_metric {
          metric_key = "log.akamai-siem.monitor_count"
          dimensions {
            dimension {
              default_value          = "n/a"
              destination_field_name = "dt.extension.config.id"
              extraction_type        = "field"
              source_field_name      = "dt.extension.config.id"
            }
            dimension {
              default_value          = "n/a"
              destination_field_name = "extension.config.name"
              extraction_type        = "field"
              source_field_name      = "extension.config.name"
            }
            dimension {
              default_value          = "n/a"
              destination_field_name = "dt.extension.name"
              extraction_type        = "field"
              source_field_name      = "dt.extension.name"
            }
            dimension {
              default_value          = "n/a"
              destination_field_name = "akamai.config.ids"
              extraction_type        = "field"
              source_field_name      = "akamai.config.ids"
            }
            dimension {
              default_value          = "n/a"
              destination_field_name = "akamai.attackdata.ruletags"
              extraction_type        = "field"
              source_field_name      = "akamai.attackdata.ruletags"
            }
            dimension {
              default_value          = "n/a"
              destination_field_name = "akamai.attackdata.rulemessages"
              extraction_type        = "field"
              source_field_name      = "akamai.attackdata.rulemessages"
            }
          }
        }
      }
    }
  }
  smartscape_node_extraction {
    processors {
      processor {
        description = "Config node upsert from registration logs"
        type        = "smartscapeNode"
        enabled     = true
        id          = "siem-config-u-registration"
        matcher     = "content == \"Configuration update\""
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.akamai_siem_config"
          node_type          = "AKAMAI_SIEM_CONFIG"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "akamai-siem:config"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.product"
              referenced_field_name = "dt.cost.product"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.costcenter"
              referenced_field_name = "dt.cost.costcenter"
            }
            smartscape_field_extraction_entry {
              field_name            = "extension.config.name"
              referenced_field_name = "extension.config.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "extension.config.id"
              referenced_field_name = "extension.config.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "akamai.config.ids"
              referenced_field_name = "akamai.config.ids"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.account.id"
              referenced_field_name = "aws.account.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.region"
              referenced_field_name = "aws.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.location"
              referenced_field_name = "azure.location"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.resource.group"
              referenced_field_name = "azure.resource.group"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.subscription"
              referenced_field_name = "azure.subscription"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.host_group.id"
              referenced_field_name = "dt.host_group.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.project.id"
              referenced_field_name = "gcp.project.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.region"
              referenced_field_name = "gcp.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.cluster.name"
              referenced_field_name = "k8s.cluster.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.namespace.name"
              referenced_field_name = "k8s.namespace.name"
            }
            smartscape_field_extraction_entry {
              referenced_field_name = "primary_tags."
              strategy              = "startsWith"
            }
          }
          id_components {
            id_component {
              id_component          = "extension.config.id"
              referenced_field_name = "dt.extension.config.id"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "smartscape_node.name"
            }
          }
        }
      }
      processor {
        description = "Config node ID extraction on all other logs"
        type        = "smartscapeNode"
        enabled     = true
        id          = "siem-config-logs"
        matcher     = "log.source == \"Akamai SIEM\""
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.akamai_siem_config"
          node_type          = "AKAMAI_SIEM_CONFIG"
          id_components {
            id_component {
              id_component          = "extension.config.id"
              referenced_field_name = "dt.extension.config.id"
            }
          }
        }
      }
    }
  }
}
