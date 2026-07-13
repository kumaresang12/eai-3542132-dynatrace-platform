resource "dynatrace_email_notification" "Ashok-3537805" {
  name                   = "Ashok-3537805"
  active                 = true
  body                   = "{ProblemDetailsHTML}"
  notify_closed_problems = true
  profile                = "vu9U3hXa3q0AAAABABhidWlsdGluOmFsZXJ0aW5nLnByb2ZpbGUABnRlbmFudAAGdGVuYW50ACRkZGExMWM4My1kZmMxLTM2NTAtODJkOS03NzM3MDAzYTE0ZGG-71TeFdrerQ"
  subject                = "{State} Problem {ProblemID}: {ImpactedEntity}"
  to                     = [ "ashok.obilisetty@fedexfreight.com" ]
}
