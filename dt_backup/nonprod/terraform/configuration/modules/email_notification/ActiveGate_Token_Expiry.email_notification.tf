resource "dynatrace_email_notification" "ActiveGate_Token_Expiry" {
  name                   = "ActiveGate Token Expiry"
  active                 = true
  body                   = "{ProblemDetailsHTML}"
  notify_closed_problems = true
  profile                = "vu9U3hXa3q0AAAABABhidWlsdGluOmFsZXJ0aW5nLnByb2ZpbGUABnRlbmFudAAGdGVuYW50ACQ0MDlhNGYyOC1mNDk2LTNhODQtOWNiNy00ZTQ0ZWQxYTZjMza-71TeFdrerQ"
  subject                = "ACTION REQUIRED: {ProblemTitle}"
  to                     = [ "ian.carlson@dynatrace.com" ]
}
