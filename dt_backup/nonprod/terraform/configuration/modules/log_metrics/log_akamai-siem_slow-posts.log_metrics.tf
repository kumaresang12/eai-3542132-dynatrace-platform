resource "dynatrace_log_metrics" "log_akamai-siem_slow-posts" {
  enabled    = true
  dimensions = [ "dt.extension.config.id", "extension.config.name", "dt.extension.name" ]
  key        = "log.akamai-siem.slow-posts"
  measure    = "OCCURRENCE"
  query      =<<-EOT
    matchesValue(log.source, "Akamai SIEM") AND matchesPhrase(akamai.attackdata.rulemessages, "Post Slow") AND (
      matchesValue(akamai.attackdata.ruleactions, "alert")
      OR matchesValue(akamai.attackdata.ruleactions, "monitor")
      OR matchesValue(akamai.attackdata.ruleactions, "allow")
    )
    EOT
}
