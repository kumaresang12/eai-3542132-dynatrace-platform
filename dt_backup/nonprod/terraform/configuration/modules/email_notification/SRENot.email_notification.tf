resource "dynatrace_email_notification" "SRENot" {
  name                   = "SRENot"
  # active               = false
  body                   = "{ProblemDetailsHTML}"
  notify_closed_problems = true
  profile                = "vu9U3hXa3q0AAAABABhidWlsdGluOmFsZXJ0aW5nLnByb2ZpbGUABnRlbmFudAAGdGVuYW50ACRiYjQ1Nzk4YS0xNzM0LTNiZmItYTVmZS03NDI1MjE0ZWNkYWG-71TeFdrerQ"
  subject                = "{State} Problem {ProblemID}: {ImpactedEntity}"
  to                     = [ "santosh.gogada@fedexfreight.com" ]
}
