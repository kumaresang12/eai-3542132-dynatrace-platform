# ATTENTION Please fill in the client secret
resource "dynatrace_webhook_notification" "ServiceNow-Notification" {
  name                   = "ServiceNow-Notification"
  active                 = true
  # insecure             = false
  notify_closed_problems = true
  # notify_event_merges  = false
  payload                =<<-EOT
    { 
      "ImpactedEntities": {ImpactedEntities}, 
      "ImpactedEntity": "{ImpactedEntity}", 
      "PID": "{PID}", 
      "ProblemDetailsHTML": "{ProblemDetailsHTML}", 
      "ProblemDetailsJSONv2": {ProblemDetailsJSONv2},  
      "ProblemDetailsMarkdown": "{ProblemDetailsMarkdown}", 
      "ProblemDetailsText": "{ProblemDetailsText}", 
      "ProblemID": "{ProblemID}", 
      "ProblemImpact": "{ProblemImpact}", 
      "ProblemSeverity": "{ProblemSeverity}", 
      "ProblemTitle": "{ProblemTitle}", 
      "ProblemURL": "{ProblemURL}", 
      "State": "{State}", 
      "Tags": "{Tags}" 
    }
  EOT
  profile                = "vu9U3hXa3q0AAAABABhidWlsdGluOmFsZXJ0aW5nLnByb2ZpbGUABnRlbmFudAAGdGVuYW50ACRjMjFmOTY5Yi01ZjAzLTMzM2QtODNlMC00ZjhmMTM2ZTc2ODK-71TeFdrerQ"
  url                    = "https://fxfsandbox.service-now.com/api/sn_em_connector/em/inbound_event?source=dynatrace&sys_id=fc090c8893fd8750fa21f2682603d654"
  # url_contains_secret  = false
  use_oauth_2            = true
  oauth_2_credentials {
    access_token_url = "https://fxfsandbox.service-now.com/oauth_token.do"
    client_id        = "d0be0b3283194baa9cfdd7a73db751cf"
    client_secret    = "$${state.secret_value}"
  }
}
