resource "dynatrace_log_metrics" "log_akamai-siem_deny_count" {
  enabled    = true
  dimensions = [ "dt.extension.config.id", "extension.config.name", "dt.extension.name", "akamai.config.ids", "akamai.attackdata.ruletags", "akamai.attackdata.rulemessages" ]
  key        = "log.akamai-siem.deny_count"
  measure    = "OCCURRENCE"
  query      =<<-EOT
    matchesValue(log.source, "Akamai SIEM") AND matchesValue(akamai.attackdata.ruleactions, "deny")
  EOT
}
