# ATTENTION REST API didn't provide credential data
resource "dynatrace_credentials" "STAGING_PING_PROTECT_BASIC_AUTH_TOKEN" {
  name                       = "STAGING_PING_PROTECT_BASIC_AUTH_TOKEN"
  allow_contextless_requests = true
  scopes                     = [ "APP_ENGINE" ]
  token                      = "################"
}
