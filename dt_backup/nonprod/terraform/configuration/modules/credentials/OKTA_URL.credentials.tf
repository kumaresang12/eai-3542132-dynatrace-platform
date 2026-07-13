# ATTENTION REST API didn't provide credential data
resource "dynatrace_credentials" "OKTA_URL" {
  name                       = "OKTA_URL"
  allow_contextless_requests = true
  scopes                     = [ "APP_ENGINE" ]
  token                      = "################"
}
