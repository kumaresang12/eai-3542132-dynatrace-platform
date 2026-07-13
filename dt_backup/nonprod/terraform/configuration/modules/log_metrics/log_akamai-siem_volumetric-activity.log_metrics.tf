resource "dynatrace_log_metrics" "log_akamai-siem_volumetric-activity" {
  enabled    = true
  dimensions = [ "dt.extension.config.id", "extension.config.name", "akamai.config.ids", "dt.extension.name" ]
  key        = "log.akamai-siem.volumetric-activity"
  measure    = "OCCURRENCE"
  query      =<<-EOT
    matchesValue(log.source, "Akamai SIEM") AND (
      matchesPhrase(akamai.attackdata.rulemessages, "Rate")
      OR matchesPhrase(akamai.attackdata.rulemessages, "DoS Anomaly")
    ) AND (
      matchesValue(akamai.attackdata.ruleactions, "alert")
      OR matchesValue(akamai.attackdata.ruleactions, "monitor")
      OR matchesValue(akamai.attackdata.ruleactions, "allow")
    )
    EOT
}
