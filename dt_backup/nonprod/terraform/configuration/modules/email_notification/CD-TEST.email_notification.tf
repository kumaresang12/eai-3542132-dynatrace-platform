resource "dynatrace_email_notification" "CD-TEST" {
  name                   = "CD-TEST"
  # active               = false
  body                   = "{ProblemDetailsHTML}"
  cc                     = [ "santosh.gogada@fedex.com" ]
  notify_closed_problems = true
  profile                = "vu9U3hXa3q0AAAABABhidWlsdGluOmFsZXJ0aW5nLnByb2ZpbGUABnRlbmFudAAGdGVuYW50ACQxNWY1MjZlYi1lMDY4LTNkMDYtYWJhOS1kNzljMmZiMmY4NTC-71TeFdrerQ"
  subject                = "{State} Problem {ProblemID}: {ImpactedEntity}"
  to                     = [ "balasubramaniam.muniswamy@fedexfreight.com" ]
}
