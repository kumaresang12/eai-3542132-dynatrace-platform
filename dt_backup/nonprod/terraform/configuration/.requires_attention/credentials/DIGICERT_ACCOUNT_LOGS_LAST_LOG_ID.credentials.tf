# ATTENTION REST API didn't provide credential data
resource "dynatrace_credentials" "DIGICERT_ACCOUNT_LOGS_LAST_LOG_ID" {
  name                       = "DIGICERT_ACCOUNT_LOGS_LAST_LOG_ID"
  allow_contextless_requests = true
  scopes                     = [ "APP_ENGINE" ]
  token                      = "################"
}
