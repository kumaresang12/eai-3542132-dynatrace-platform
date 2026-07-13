resource "dynatrace_log_metrics" "log_akamai-siem_generic-web-attacks" {
  enabled    = true
  dimensions = [ "dt.extension.config.id", "extension.config.name", "dt.extension.name", "akamai.config.ids" ]
  key        = "log.akamai-siem.generic-web-attacks"
  measure    = "OCCURRENCE"
  query      =<<-EOT
    matchesValue(log.source, "Akamai SIEM") AND (
      matchesPhrase(akamai.attackdata.rulemessages, "Trojan")
      OR matchesPhrase(akamai.attackdata.rulemessages, "Invalid HTTP")
      OR matchesPhrase(akamai.attackdata.rulemessages, "Total Inbound")
      OR matchesPhrase(akamai.attackdata.rulemessages, "Web Attack Tool") 
      OR matchesPhrase(akamai.attackdata.rulemessages, "Web Protocol Attack") 
      OR matchesPhrase(akamai.attackdata.rulemessages, "Web Platform Attack") 
      OR matchesPhrase(akamai.attackdata.rulemessages, "Web Policy Violation")
    ) AND (
      matchesValue(akamai.attackdata.ruleactions, "alert") 
      OR matchesValue(akamai.attackdata.ruleactions, "monitor") 
      OR matchesValue(akamai.attackdata.ruleactions, "allow")
    )
    EOT
}
