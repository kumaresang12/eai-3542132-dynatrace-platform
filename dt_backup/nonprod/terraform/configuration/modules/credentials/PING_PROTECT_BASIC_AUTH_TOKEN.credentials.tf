# ATTENTION REST API didn't provide credential data
resource "dynatrace_credentials" "PING_PROTECT_BASIC_AUTH_TOKEN" {
  name                       = "PING_PROTECT_BASIC_AUTH_TOKEN"
  allow_contextless_requests = true
  scopes                     = [ "APP_ENGINE" ]
  token                      = "################"
}
