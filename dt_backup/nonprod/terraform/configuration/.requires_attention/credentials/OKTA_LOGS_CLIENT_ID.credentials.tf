# ATTENTION REST API didn't provide credential data
resource "dynatrace_credentials" "OKTA_LOGS_CLIENT_ID" {
  name                       = "OKTA_LOGS_CLIENT_ID"
  allow_contextless_requests = true
  scopes                     = [ "APP_ENGINE" ]
  token                      = "################"
}
