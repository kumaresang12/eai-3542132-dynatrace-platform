resource "dynatrace_log_metrics" "log_akamai-siem_targeted-web-attacks" {
  enabled    = true
  dimensions = [ "dt.extension.config.id", "extension.config.name", "dt.extension.name", "akamai.config.ids" ]
  key        = "log.akamai-siem.targeted-web-attacks"
  measure    = "OCCURRENCE"
  query      =<<-EOT
    matchesValue(log.source, "Akamai SIEM") AND (
      matchesPhrase(akamai.attackdata.rulemessages, "Cross-site Scripting")
      OR matchesPhrase(akamai.attackdata.rulemessages, "SQL Injection")
      OR matchesPhrase(akamai.attackdata.rulemessages, "Remote File Inclusion")
      OR matchesPhrase(akamai.attackdata.rulemessages, "Command Injection")
      OR matchesPhrase(akamai.attackdata.rulemessages, "PHP Injection")
    ) AND (
      matchesValue(akamai.attackdata.ruleactions, "alert")
      OR matchesValue(akamai.attackdata.ruleactions, "monitor")
      OR matchesValue(akamai.attackdata.ruleactions, "allow")
    )
    EOT
}
