resource "dynatrace_email_notification" "FIC_Consumer_Integration-3542370" {
  name                   = "FIC Consumer Integration - 3542370"
  active                 = true
  body                   = "{ProblemDetailsHTML}"
  notify_closed_problems = true
  profile                = "vu9U3hXa3q0AAAABABhidWlsdGluOmFsZXJ0aW5nLnByb2ZpbGUABnRlbmFudAAGdGVuYW50ACQ1YjczNGQ4MS03MzVjLTM2OTYtOTkzZC02NGQyMDU5NmMzNja-71TeFdrerQ"
  subject                = "{State} Problem {ProblemID}: {ImpactedEntity}"
  to                     = [ "Kalva-DirectReports@fedexfreight.com" ]
}
