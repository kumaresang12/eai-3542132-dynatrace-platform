resource "dynatrace_email_notification" "TEST_Response" {
  name                   = "TEST_Response"
  active                 = true
  body                   = "{ProblemDetailsHTML}"
  cc                     = [ "santosh.gogada@fedexfreight.com" ]
  notify_closed_problems = true
  profile                = "vu9U3hXa3q0AAAABABhidWlsdGluOmFsZXJ0aW5nLnByb2ZpbGUABnRlbmFudAAGdGVuYW50ACRiNzczMjAxMy0wYmU5LTM4MWItOGZmNS1lYWI0YTI4MWZjZGO-71TeFdrerQ"
  subject                = "{State} Problem {ProblemID}: {ImpactedEntity}"
  to                     = [ "samuel.abia@fedexfreight.com" ]
}
