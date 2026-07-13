resource "dynatrace_log_metrics" "log_akamai-siem_total-events" {
  enabled    = true
  dimensions = [ "dt.extension.config.id", "extension.config.name", "dt.extension.name", "akamai.config.ids", "akamai.attackdata.ruletags", "akamai.attackdata.rulemessages", "akamai.attackdata.ruleactions" ]
  key        = "log.akamai-siem.total-events"
  measure    = "OCCURRENCE"
  query      = "matchesValue(log.source, \"Akamai SIEM\")"
}
